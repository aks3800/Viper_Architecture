//
//  Protocols.swift
//  VIPER
//
//  Created by aks on 11/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewPropertiesProtocol {
    var presenter: HomeViewToPresenterProtocol? { get set }
}

protocol HomePresenterPropertiesProtocol {
    var view: HomePresenterToViewProtocol? { get set }
    var interactor: HomePresenterToInteractorProtocol? { get set }
    var router: HomePresenterToRouterProtocol? { get set }
}

protocol HomeInteractorPropertiesProtocol {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
}

protocol HomeViewToPresenterProtocol {
    func startFetchingData()
    func buttonTapped(navigationController: UINavigationController)
}

protocol HomePresenterToViewProtocol {
    func showView()
    func showError()
}

protocol HomePresenterToInteractorProtocol {
    func fetchData()
}

protocol HomeInteractorToPresenterProtocol {
    func fetchDataSuccess()
    func fetchDataFailed()
}

protocol HomePresenterToRouterProtocol {
    func pushToAccount(navigationController: UINavigationController)
}
