//
//  HomeViewController.swift
//  TourClone
//
//  Created by 东东 on 2017/6/24.
//  Copyright © 2017年 linxingdong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    lazy var mainTableView: UITableView = {
        let table = UITableView.init(frame: CGRect.zero, style: .grouped);
        table.delegate = self;
        table.dataSource = self;
        return table;
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(mainTableView);
        mainTableView.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(view).inset(UIEdgeInsetsMake(0, 0, 0, 0));
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension HomeViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 100;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell");
        if (cell == nil) {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell");
        }
        cell?.textLabel?.text = "\(indexPath.row),\(indexPath.row)";
        return cell!;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let seVC = SecondViewController();
        self.present(seVC, animated: true) {
            
        }
    }
}
