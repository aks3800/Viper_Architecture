//
//  AccountViewController.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, AccountViewPropertiesProtocol {
    var presenter: AccountViewToPresenterProtocol?
    
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
        print("View: View is loaded now. Will ask presenter to start fetching data")
        presenter?.startFetchingData()
    }
    
    deinit {
        print("\n\nDEINIT: AccountViewController is getting deinitialized\n\n")
    }

}


extension AccountViewController: AccountPresenterToViewProtocol {
    func showView() {
        print("View: Presenter has asked View to show itself")
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    
    func showError() {
        print("View: Presenter has asked view to show error")
    }
}
