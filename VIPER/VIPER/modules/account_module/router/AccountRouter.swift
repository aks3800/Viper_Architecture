//
//  AccountRouter.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
import UIKit

class AccountRouter: AccountPresenterToRouterProtocol {
    func pushTo_XYZ(navigationController: UINavigationController) {
        print("Router: Presenter has asked router to push to XYZ")
    }
}
