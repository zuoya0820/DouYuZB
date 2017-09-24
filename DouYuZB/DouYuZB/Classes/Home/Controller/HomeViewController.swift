//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by zuoya on 2017/9/24.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

}

// MARK: - 设置UI界面
extension HomeViewController {
    
    public func setupUI() {
        // 设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        
        let btn = UIButton()
        let image = UIImage(named: "logo")
        btn.setImage(image, for: .normal)
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
}
