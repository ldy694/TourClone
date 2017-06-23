//
//  SecondViewController.swift
//  TourClone
//
//  Created by 东东 on 2017/6/23.
//  Copyright © 2017年 linxingdong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue;
        let big = UIButton.init(type: .custom);
        big.setTitle("返回", for: .normal);
        big.addTarget(self, action: #selector(SecondViewController.back), for: .touchUpInside);
        self.view.addSubview(big);
        big.snp.makeConstraints { (make) in
            make.center.equalTo(self.view);
        }
    }
    func back() -> Void {
        self.dismiss(animated: true) { 
            
        };
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
