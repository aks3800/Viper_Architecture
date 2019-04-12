//
//  HomeInteractor.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorPropertiesProtocol {
    var presenter: HomeInteractorToPresenterProtocol?
    
}

extension HomeInteractor: HomePresenterToInteractorProtocol {
    
    func fetchData() {
        print("Interactor: Got Request from Presenter to fetch data. Will give presenter the required data.")
        presenter?.fetchDataSuccess()
//        presenter?.fetchDataFailed()
    }
    
    
}
