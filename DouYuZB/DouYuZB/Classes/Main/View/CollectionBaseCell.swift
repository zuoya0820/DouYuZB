//
//  CollectionBaseCell.swift
//  DouYuZB
//
//  Created by zuoya on 2017/10/22.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionBaseCell: UICollectionViewCell {
    
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var onlineBtn: UIButton!
    
    var anchor : AnchorModel? {
        didSet {
            // 0.校验模型是否有值
            guard let anchor = anchor else {
                return
            }
            
            // 1.取出在线人数显示的文字
            var onlineStr : String = ""
            if anchor.online >= 10000 {
                onlineStr = "\(Int(anchor.online / 10000))万在线"
            } else {
                onlineStr = "\(Int(anchor.online))在线"
            }
            onlineBtn.setTitle(onlineStr, for: .normal)
            
            // 2.昵称的显示
            nicknameLabel.text = anchor.nickname
            
            // 3.设置封面图片
            guard let iconURL : URL = URL(string : anchor.vertical_src) else { return }
            iconImageView.kf.setImage(with: ImageResource.init(downloadURL: iconURL))
            
        }
    }
    
}
