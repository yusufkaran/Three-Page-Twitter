//
//  LabelFont.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 12.04.2023.
//

import UIKit


enum FontTemp {
    case sBold
    case sMedium
    case sLight
    case ssLight
    case mLight
    case mBold
    case profileItem
    
    var uiFontCode: UIFont {
        switch self {
        case .sBold:
            return .systemFont(ofSize: 16, weight: .bold)
        case .sMedium:
            return .systemFont(ofSize: 16, weight: .medium)
        case .sLight:
            return .systemFont(ofSize: 16, weight: .light)
        case .ssLight:
            return .systemFont(ofSize: 12, weight: .light)
        case .mLight:
            return .systemFont(ofSize: 17, weight: .light)
        case .mBold:
            return .systemFont(ofSize: 17, weight: .bold)
        case .profileItem:
            return .systemFont(ofSize: 14, weight: .light)
        }
    }
}
