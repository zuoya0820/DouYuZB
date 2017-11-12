//
//  CollectionNormalCell.swift
//  DouYuZB
//
//  Created by zuoya on 2017/10/15.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionNormalCell: CollectionBaseCell {

    @IBOutlet weak var roomNameLabel: UILabel!
    
    
    override var anchor : AnchorModel? {
        didSet {
            // 1.将属性传递个父类
            super.anchor = anchor
            
            // 2.房间名称
            roomNameLabel.text = anchor?.room_name
        }
    }
}
