//
//  AccountInteractor.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
class AccountInteractor: AccountInteractorPropertiesProtocol {
    var presenter: AccountInteractorToPresenterProtocol?
}


extension AccountInteractor: AccountPresenterToInteractorProtocol {
    func fetchData() {
        print("Interactor: Got Request from Presenter to fetch data. Will give presenter the required data.")
        presenter?.fetchDataSuccess()
        //        presenter?.fetchDataFailed()
    }
    
    
}
