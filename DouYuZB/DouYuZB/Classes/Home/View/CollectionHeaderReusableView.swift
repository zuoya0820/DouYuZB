//
//  CollectionHeaderReusableView.swift
//  DouYuZB
//
//  Created by zuoya on 2017/10/15.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit

class CollectionHeaderReusableView: UICollectionReusableView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    var group : AnchorGroup? {
        didSet {
            titleLabel.text = group?.tag_name
            iconImageView.image = UIImage(named: group?.icon_name ?? "home_header_normal")
        }
    }
    
}
