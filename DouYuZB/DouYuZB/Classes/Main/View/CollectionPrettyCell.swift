//
//  CollectionPrettyCell.swift
//  DouYuZB
//
//  Created by zuoya on 2017/10/15.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionPrettyCell: CollectionBaseCell {
    
    @IBOutlet weak var cityBtn: UIButton!
    
    override var anchor : AnchorModel? {
        didSet {
            // 1.将属性传递个父类
            super.anchor = anchor

            // 3.所在城市
            cityBtn.setTitle(anchor?.anchor_city, for: .normal)
            
        }
    }

}
