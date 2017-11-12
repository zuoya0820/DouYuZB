//
//  AnchorModel.swift
//  DouYuZB
//
//  Created by zuoya on 2017/10/22.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit

class AnchorModel: NSObject {
    /// 房间id
    var room_id : Int = 0
    /// 房间图片对应的URLstring
    var vertical_src : String = ""
    /// 判断是手机直播还是电脑直播
    /// 0: 电脑直播   1: 手机直播
    var isVertical : Int = 0
    /// 房间名称
    var room_name : String = ""
    /// 主播昵称
    var nickname : String = ""
    /// 观看人数
    var online : Int = 0
    /// 所在城市
    var anchor_city : String = ""
    
    init(dict : [String : NSObject]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
