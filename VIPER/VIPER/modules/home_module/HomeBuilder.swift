//
//  HomeBuilder.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation

class HomeBuilder {
    static func createModule() -> HomeViewController {
        print("Home Module Creation")
        let homeViewController = HomeViewController()
        let presenter: HomePresenterPropertiesProtocol & HomeViewToPresenterProtocol & HomeInteractorToPresenterProtocol = HomePresenter()
        let interactor: HomeInteractorPropertiesProtocol & HomePresenterToInteractorProtocol = HomeInteractor()
        let router: HomePresenterToRouterProtocol = HomeRouter()
        homeViewController.presenter = presenter
        presenter.view = homeViewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return homeViewController
    }
}
