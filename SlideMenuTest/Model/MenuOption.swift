//
//  MenuOption.swift
//  SlideMenuTest
//
//  Created by Usama Minegishi on 2019/06/07.
//  Copyright © 2019 Usama Minegishi. All rights reserved.
//

import UIKit

enum MenuOption: Int {
    case Profile
    case Inbox
    case Notification
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notification: return "Notification"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "icon_profile") ?? UIImage()
        case .Inbox: return UIImage(named: "icon_inbox") ?? UIImage()
        case .Notification: return UIImage(named: "icon_notification") ?? UIImage()
        case .Settings: return UIImage(named: "icon_settings") ?? UIImage()
        }
    }
}
