//
//  AccountBuilder.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation

class AccountBuilder  {
    static func createModule() -> AccountViewController {
        print("Account Module Creation")
        let accountViewController = AccountViewController()
        let presenter: AccountPresenterPropertiesProtocol & AccountViewToPresenterProtocol & AccountInteractorToPresenterProtocol = AccountPresenter()
        let interactor: AccountInteractorPropertiesProtocol & AccountPresenterToInteractorProtocol = AccountInteractor()
        let router: AccountPresenterToRouterProtocol = AccountRouter()
        accountViewController.presenter = presenter
        presenter.view = accountViewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return accountViewController
    }
}
