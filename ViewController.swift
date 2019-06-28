//
//  ViewController.swift
//  PrintFordPassLabel
//
//  Created by fordpass on 6/27/19.
//  Copyright © 2019 TeamOneTwo. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var bigBox = UIView()
    let smallBox = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.orange.withAlphaComponent(0.9)
        self.view.addSubview(bigBox)
        
        bigBox.backgroundColor = .white
        bigBox.snp.makeConstraints { (make) in
            make.height.equalTo(300)
            make.width.equalTo(300)
            make.center.equalToSuperview()
        }
        
        bigBox.addSubview(smallBox)
        smallBox.backgroundColor = .green
        smallBox.snp.makeConstraints { (make) in
            make.height.equalTo(250)
            make.width.equalTo(250)
            make.center.equalToSuperview()
        }
        
        smallBox.text = "FordPass"
        smallBox.textAlignment = .center
        smallBox.font = .boldSystemFont(ofSize: 50)
        smallBox.textColor = .blue
    }
}


