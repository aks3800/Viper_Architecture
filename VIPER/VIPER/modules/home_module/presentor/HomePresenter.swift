//
//  HomePresenter.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
import UIKit

class HomePresenter: HomePresenterPropertiesProtocol {
    
    var view: HomePresenterToViewProtocol?
    
    var interactor: HomePresenterToInteractorProtocol?
    
    var router: HomePresenterToRouterProtocol?
    
}

extension HomePresenter: HomeViewToPresenterProtocol {
    func buttonTapped(navigationController: UINavigationController) {
        print("Presenter: View told presenter that button has been tapped. Now Presenter will tell Router to perform required actions")
        router?.pushToAccount(navigationController: navigationController)
    }
    
    func startFetchingData() {
        print("Presenter: Got request from View to fetch Data. Presenter Will now ask Interactor to do so")
        interactor?.fetchData()
    }
}


extension HomePresenter: HomeInteractorToPresenterProtocol {
    func fetchDataSuccess() {
        print("Presenter: Interactor has successfully given Presenter the data. Now Presenter will tell View to show everything it has")
        view?.showView()
    }
    
    func fetchDataFailed() {
        print("Presenter: Interactor has successfully told Presenter that the data fetch has failed. Now Presenter will tell View to show error")
        view?.showError()
    }
    
}
