//
//  Protocols.swift
//  VIPER
//
//  Created by aks on 11/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewPropertiesProtocol: class {
    var presenter: HomeViewToPresenterProtocol? { get set }
}

protocol HomePresenterPropertiesProtocol: class {
    var view: HomePresenterToViewProtocol? { get set }
    var interactor: HomePresenterToInteractorProtocol? { get set }
    var router: HomePresenterToRouterProtocol? { get set }
}

protocol HomeInteractorPropertiesProtocol: class {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
}

protocol HomeViewToPresenterProtocol: class {
    func startFetchingData()
    func buttonTapped(navigationController: UINavigationController)
}

protocol HomePresenterToViewProtocol: class {
    func showView()
    func showError()
}

protocol HomePresenterToInteractorProtocol: class {
    func fetchData()
}

protocol HomeInteractorToPresenterProtocol: class {
    func fetchDataSuccess()
    func fetchDataFailed()
}

protocol HomePresenterToRouterProtocol: class {
    func pushToAccount(navigationController: UINavigationController)
}
