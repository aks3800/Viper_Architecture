//
//  Protocols.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
import UIKit

protocol AccountViewPropertiesProtocol: class {
    var presenter: AccountViewToPresenterProtocol? { get set }
}

protocol AccountPresenterPropertiesProtocol: class {
    var view: AccountPresenterToViewProtocol? { get set }
    var interactor: AccountPresenterToInteractorProtocol? { get set }
    var router: AccountPresenterToRouterProtocol? { get set }
}

protocol AccountInteractorPropertiesProtocol: class {
    var presenter: AccountInteractorToPresenterProtocol? { get set }
}

protocol AccountViewToPresenterProtocol: class {
    func startFetchingData()
}

protocol AccountPresenterToViewProtocol: class {
    func showView()
    func showError()
}

protocol AccountPresenterToInteractorProtocol: class {
    func fetchData()
}

protocol AccountInteractorToPresenterProtocol: class {
    func fetchDataSuccess()
    func fetchDataFailed()
}

protocol AccountPresenterToRouterProtocol: class {
    func pushTo_XYZ(navigationController: UINavigationController)
}

