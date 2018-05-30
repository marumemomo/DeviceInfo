//
//  DeviceInfo.swift
//  DeviceInfo
//
//  Created by kaito watanabe on 2018/05/30.
//  Copyright © 2018年 marumemomo. All rights reserved.
//

import AdSupport

public class DeviceInfo {
    static let shared = DeviceInfo()

    let versionCode: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        return String(validatingUTF8: NSString(bytes: &systemInfo.machine, length: Int(_SYS_NAMELEN), encoding: String.Encoding.ascii.rawValue)!.utf8String!)!
    }()

    let modelVersion: DeviceModelVersionType
    let category: String
    let mobileModelName: String
    let osVersion: String
    let vendorId: String
    let language: String
    let timeZoneOffsetSeconds: Int

    private init() {
        modelVersion = DeviceModelVersionType(code: versionCode)
        mobileModelName = modelVersion.name
        category = modelVersion.category
        osVersion = UIDevice.current.systemVersion
        vendorId = UIDevice.current.identifierForVendor?.uuidString ?? ""
        language = Locale.preferredLanguages.first ?? ""
        timeZoneOffsetSeconds = TimeZone.current.secondsFromGMT()
    }

    public static var mobileModelName: String {
        return shared.mobileModelName
    }

    public static var category: String {
        return shared.category
    }

    public static var mobileOsHardwareModel: String {
        return shared.versionCode
    }

    public static var osVersion: String {
        return shared.osVersion
    }

    public static var vendorId: String {
        return shared.vendorId
    }

    public static var advertisingId: String {
        return ASIdentifierManager.shared().isAdvertisingTrackingEnabled ? ASIdentifierManager.shared().advertisingIdentifier.uuidString : ""
    }

    public static var language: String {
        return shared.language
    }

    public static var timeZoneOffsetSeconds: Int {
        return shared.timeZoneOffsetSeconds
    }

    public static var limitAdTrackingEnabled: Bool {
        return ASIdentifierManager.shared().isAdvertisingTrackingEnabled
    }
}
