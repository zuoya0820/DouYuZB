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

        addChildVc(childName: "Home")
        addChildVc(childName: "Live")
        addChildVc(childName: "Follow")
        addChildVc(childName: "Profile")
    }
    
    private func addChildVc(childName: String) {
        let vc = UIStoryboard(name: childName, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(vc)
    }

}
