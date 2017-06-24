//
//  BaseTabBarController.swift
//  TourClone
//
//  Created by 东东 on 2017/6/24.
//  Copyright © 2017年 linxingdong. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    let home:HomeViewController = HomeViewController();
    let foot:FooterViewController = FooterViewController();
    let mine:MineViewController = MineViewController();
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let homeNav:BaseNavigationController = BaseNavigationController();
        homeNav.setViewControllers([home], animated: true);
        homeNav.title = "首页";
        homeNav.tabBarItem.image = UIImage.init(named: "big");
        homeNav.tabBarItem.selectedImage = UIImage.init(named: "im");
        let footNav:BaseNavigationController = BaseNavigationController();
        footNav.setViewControllers([foot], animated: true);
        footNav.title = "足迹";
        footNav.tabBarItem.image = UIImage.init(named: "big");
        footNav.tabBarItem.selectedImage = UIImage.init(named: "im");
        let mineNav:BaseNavigationController = BaseNavigationController();
        mineNav.setViewControllers([mine], animated: true);
        mineNav.title = "个人";
        mineNav.tabBarItem.image = UIImage.init(named: "big");
        mineNav.tabBarItem.selectedImage = UIImage.init(named: "im");
        self.setViewControllers([homeNav,footNav,mineNav], animated: true);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
