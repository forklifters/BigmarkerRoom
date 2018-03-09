//
//  CurrentUser.swift
//  bigmarker
//
//  Created by hanqing on 8/17/16.
//  Copyright © 2016 hanqing. All rights reserved.
//

import Foundation

class CurrentUser: NSObject {
    

    class func name() -> String {
        let prefs:UserDefaults = UserDefaults.standard
        if let username = prefs.object(forKey: "USERNAME") as? String {
            return username
        } else {
            return ""
        }
    }
    
    
}
