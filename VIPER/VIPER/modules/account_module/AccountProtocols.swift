//
//  Protocols.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
import UIKit

protocol AccountViewPropertiesProtocol {
    var presenter: AccountViewToPresenterProtocol? { get set }
}

protocol AccountPresenterPropertiesProtocol {
    var view: AccountPresenterToViewProtocol? { get set }
    var interactor: AccountPresenterToInteractorProtocol? { get set }
    var router: AccountPresenterToRouterProtocol? { get set }
}

protocol AccountInteractorPropertiesProtocol {
    var presenter: AccountInteractorToPresenterProtocol? { get set }
}

protocol AccountViewToPresenterProtocol {
    func startFetchingData()
}

protocol AccountPresenterToViewProtocol {
    func showView()
    func showError()
}

protocol AccountPresenterToInteractorProtocol {
    func fetchData()
}

protocol AccountInteractorToPresenterProtocol {
    func fetchDataSuccess()
    func fetchDataFailed()
}

protocol AccountPresenterToRouterProtocol {
    func pushTo_XYZ(navigationController: UINavigationController)
}

