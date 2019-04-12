//
//  AccountViewController.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Account"
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        print("Account View Controller Loaded")
        showView()
    }
    
    deinit {
        print("\n\nDEINIT: AccountViewController is getting deinitialized\n\n")
    }

}


extension AccountViewController{
    func showView() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}
