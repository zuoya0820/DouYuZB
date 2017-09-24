//
//  MainViewController.swift
//  DouYuZB
//
//  Created by zuoya on 2017/9/24.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVc(stroyName: "Home")
        addChildVc(stroyName: "Live")
        addChildVc(stroyName: "Follow")
        addChildVc(stroyName: "Profile")
        
    }
    
    private func addChildVc(stroyName: String)
    {
        let childVc = UIStoryboard(name: stroyName, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(childVc)
    }

}
