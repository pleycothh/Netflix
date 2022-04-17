//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Tia on 17/4/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        // Do any additional setup after loading the view.
        
        // HUSD are four root controller for different view at main bottom navbar
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcommingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        
        // add for view as four button at main view
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        // 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
    }


}

