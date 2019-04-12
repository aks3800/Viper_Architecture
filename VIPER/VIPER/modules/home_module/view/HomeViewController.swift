//
//  HomeViewController.swift
//  VIPER
//
//  Created by aks on 11/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import UIKit


@objcMembers class HomeViewController: UIViewController{
    
    
    let button: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Catalog", for: UIControl.State.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
        print("Home View Controller Loaded")
        showView()
    }
    
    deinit {
        print("\n\nDEINIT: HomeViewController is getting deinitialized\n\n")
    }
}


extension HomeViewController {
    
    func showView() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        button.addTarget(self, action: #selector(buttonTapped), for: UIControl.Event.touchUpInside)
    }
}


//MARK:- Actions
extension HomeViewController {
    func buttonTapped() -> Void {
        if let navController = navigationController {
            navController.pushViewController(AccountViewController(), animated: true)
        }
    }
}
