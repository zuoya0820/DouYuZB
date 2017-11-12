//
//  NSData-Extension.swift
//  DouYuZB
//
//  Created by zuoya on 2017/10/21.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import Foundation


extension NSDate {
    class func getCurrentTime() -> NSString {
        let nowDate = NSDate()
        let interval = nowDate.timeIntervalSince1970
        return "\(interval)" as NSString
    }
}
