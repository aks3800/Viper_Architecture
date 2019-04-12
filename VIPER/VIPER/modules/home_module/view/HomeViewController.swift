//
//  HomeViewController.swift
//  VIPER
//
//  Created by aks on 11/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import UIKit


@objcMembers class HomeViewController: UIViewController, HomeViewPropertiesProtocol {
    
    var presenter: HomeViewToPresenterProtocol?
    
    let button: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Catalog", for: UIControl.State.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        print("View: View is loaded now. Will ask presenter to start fetching data")
        presenter?.startFetchingData()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("\n\nDEINIT: HomeViewController is getting deinitialized\n\n")
    }
}


extension HomeViewController: HomePresenterToViewProtocol {
    
    func showView() {
        print("View: Presenter has asked View to show itself")
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        button.addTarget(self, action: #selector(buttonTapped), for: UIControl.Event.touchUpInside)
    }
    
    func showError() {
        print("View: Presenter has asked view to show error")
    }
    
}


//MARK:- Actions
extension HomeViewController {
    func buttonTapped() -> Void {
        if let navController = navigationController {
            print("View: Button is tapped on View. View will tell Presenter that button has been tapped")
            presenter?.buttonTapped(navigationController: navController)
        }
    }
}
