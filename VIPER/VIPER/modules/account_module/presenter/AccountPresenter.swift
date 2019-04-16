//
//  AccountPresenter.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
class AccountPresenter: AccountPresenterPropertiesProtocol {
    weak var view: AccountPresenterToViewProtocol?
    
    var interactor: AccountPresenterToInteractorProtocol?
    
    weak var router: AccountPresenterToRouterProtocol?
    
    deinit {
        print("\n\nDEINIT: AccountPresenter is getting deinitialized\n\n")
        interactor = nil
    }
    
}


extension AccountPresenter: AccountViewToPresenterProtocol {
    func startFetchingData() {
        interactor?.fetchData()
    }
}

extension AccountPresenter: AccountInteractorToPresenterProtocol {
    func fetchDataSuccess() {
        view?.showView()
    }
    
    func fetchDataFailed() {
        view?.showError()
    }
}
