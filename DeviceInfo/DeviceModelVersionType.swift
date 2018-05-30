//
//  DeviceModelVersionType.swift
//  DeviceInfo
//
//  Created by kaito watanabe on 2018/05/30.
//  Copyright © 2018年 marumemomo. All rights reserved.
//

enum DeviceModelVersionType {
    case iPhone4, iPhone4S, iPhone5, iPhone5C, iPhone5S, iPhone6, iPhone6Plus, iPhone6S, iPhone6SPlus, iPhoneSE, iPhone7, iPhone7Plus, iPhone8, iPhone8Plus, iPhoneX, iPhone, iPhone3G, iPhone3GS
    case iPad1, iPad2, iPad3, iPad4, iPad5, iPadAir, iPadAir2, iPadMini, iPadMini2, iPadMini3, iPadMini4, iPadPro12_9Inch, iPadPro10_5Inch, iPadPro9_7Inch, iPadPro12_9Inch2, iPad6
    case unknown

    init(code: String) {
        switch code {
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":
            self = .iPhone4
        case "iPhone4,1", "iPhone4,2", "iPhone4,3":
            self = .iPhone4S
        case "iPhone5,1", "iPhone5,2":
            self = .iPhone5
        case "iPhone5,3", "iPhone5,4":
            self = .iPhone5C
        case "iPhone6,1", "iPhone6,2":
            self = .iPhone5S
        case "iPhone7,2":
            self = .iPhone6
        case "iPhone7,1":
            self = .iPhone6Plus
        case "iPhone8,1":
            self = .iPhone6S
        case "iPhone8,2":
            self = .iPhone6SPlus
        case "iPhone8,4":
            self = .iPhoneSE
        case "iPhone9,1", "iPhone9,3":
            self = .iPhone7
        case "iPhone9,2", "iPhone9,4":
            self = .iPhone7Plus
        case "iPhone10,1", "iPhone10,4":
            self = .iPhone8
        case "iPhone10,2", "iPhone10,5":
            self = .iPhone8Plus
        case "iPhone10,3", "iPhone10,6":
            self = .iPhoneX
        case "iPhone1,1":
            self = .iPhone
        case "iPhone1,2":
            self = .iPhone3G
        case "iPhone2,1":
            self = .iPhone3GS

        case "iPad1,1":
            self = .iPad1
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":
            self = .iPad2
        case "iPad3,1", "iPad3,2", "iPad3,3":
            self = .iPad3
        case "iPad3,4", "iPad3,5", "iPad3,6":
            self = .iPad4
        case "iPad6,11", "iPad6,12":
            self = .iPad5
        case "iPad4,1", "iPad4,2", "iPad4,3":
            self = .iPadAir
        case "iPad5,3", "iPad5,4":
            self = .iPadAir2
        case "iPad2,5", "iPad2,6", "iPad2,7":
            self = .iPadMini
        case "iPad4,4", "iPad4,5", "iPad4,6":
            self = .iPadMini2
        case "iPad4,7", "iPad4,8", "iPad4,9":
            self = .iPadMini3
        case "iPad5,1", "iPad5,2":
            self = .iPadMini4
        case "iPad6,7", "iPad6,8":
            self = .iPadPro12_9Inch
        case "iPad7,3", "iPad7,4":
            self = .iPadPro10_5Inch
        case "iPad6,3", "iPad6,4":
            self = .iPadPro9_7Inch
        case "iPad7,1", "iPad7,2":
            self = .iPadPro12_9Inch2
        case "iPad7,5", "iPad7,6":
            self = .iPad6
        default:
            self = .unknown
        }
    }

    var name: String {
        switch self {
        case .iPad1: return "iPad"
        case .iPad2: return "iPad 2"
        case .iPad3: return "iPad 3rd gen"
        case .iPad4: return "iPad 4th gen"
        case .iPadAir: return "iPad Air"
        case .iPadAir2: return "iPad Air 2"
        case .iPadPro12_9Inch: return "iPad Pro 12.9 inch"
        case .iPadPro9_7Inch: return "iPad Pro 9.7 inch"
        case .iPad5: return "iPad 5th gen"
        case .iPadPro12_9Inch2: return "iPad Pro 12.9 inch 2nd gen"
        case .iPadPro10_5Inch: return "iPad Pro 10.5 inch"
        case .iPad6: return "iPad 6th gen"

        case .iPadMini: return "iPad mini"
        case .iPadMini2: return "Pad mini 2"
        case .iPadMini3: return "iPad mini 3"
        case .iPadMini4: return "iPad mini 4"

        case .iPhone: return "iPhone"
        case .iPhone3G: return "iPhone 3G"
        case .iPhone3GS: return "iPhone 3GS"
        case .iPhone4: return "iPhone 4"
        case .iPhone4S: return "iPhone 4S"
        case .iPhone5: return "iPhone 5"
        case .iPhone5C: return "iPhone 5c"
        case .iPhone5S: return "iPhone 5s"
        case .iPhone6: return "iPhone 6"
        case .iPhone6Plus: return "iPhone 6 Plus"
        case .iPhone6S: return "iPhone 6s"
        case .iPhone6SPlus: return "iPhone 6s Plus"
        case .iPhoneSE: return "iPhone SE"
        case .iPhone7: return "iPhone 7"
        case .iPhone7Plus: return "iPhone 7 Plus"
        case .iPhone8: return "iPhone 8"
        case .iPhone8Plus: return "iPhone 8 Plus"
        case .iPhoneX: return "iPhone X"
        case .unknown: return "unknown"
        }
    }

    var category: String {
        switch self {
    case .iPad1, .iPad2, .iPad3, .iPad4, .iPad5, .iPad6, .iPadAir, .iPadAir2, .iPadPro9_7Inch, .iPadPro10_5Inch, .iPadPro12_9Inch, .iPadPro12_9Inch2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4:
            return "tablet"
    case .iPhone, .iPhone3G, .iPhone3GS, .iPhone4, .iPhone4S, .iPhone5, .iPhone5C, .iPhone5S, .iPhone6, .iPhone6Plus, .iPhone6S, .iPhone6SPlus, .iPhoneSE, .iPhone7, .iPhone7Plus, .iPhone8, .iPhone8Plus, .iPhoneX:
            return "mobile"
        case .unknown:
            return "desktop"
        }
    }
}
