//
//  AccountPresenter.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
class AccountPresenter: AccountPresenterPropertiesProtocol {
    var view: AccountPresenterToViewProtocol?
    
    var interactor: AccountPresenterToInteractorProtocol?
    
    var router: AccountPresenterToRouterProtocol?
    
    
}


extension AccountPresenter: AccountViewToPresenterProtocol {
    func startFetchingData() {
        print("Presenter: Got request from View to fetch Data. Presenter Will now ask Interactor to do so")
        interactor?.fetchData()
    }
}

extension AccountPresenter: AccountInteractorToPresenterProtocol {
    func fetchDataSuccess() {
        print("Presenter: Interactor has successfully given Presenter the data. Now Presenter will tell View to show everything it has")
        view?.showView()
    }
    
    func fetchDataFailed() {
        print("Presenter: Interactor has successfully told Presenter that the data fetch has failed. Now Presenter will tell View to show error")
        view?.showError()
    }
}
