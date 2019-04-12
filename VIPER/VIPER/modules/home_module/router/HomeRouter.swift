//
//  HomeRouter.swift
//  VIPER
//
//  Created by aks on 11/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import UIKit
import Foundation

class HomeRouter: HomePresenterToRouterProtocol {
    
    func pushToAccount(navigationController: UINavigationController) {
        print("Router: Presenter has asked router to push to catalog")
        print("Router: Creating Account now")
        let accountModule = AccountBuilder.createModule()
        navigationController.pushViewController(accountModule, animated: true)
    }
    
    
}
