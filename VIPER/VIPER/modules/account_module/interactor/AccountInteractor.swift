//
//  AccountInteractor.swift
//  VIPER
//
//  Created by aks on 12/04/19.
//  Copyright © 2019 aks. All rights reserved.
//

import Foundation
class AccountInteractor: AccountInteractorPropertiesProtocol {
    weak var presenter: AccountInteractorToPresenterProtocol?
    
    deinit {
        print("\n\nDEINIT: AccountInteractor is getting deinitialized\n\n")
    }
}


extension AccountInteractor: AccountPresenterToInteractorProtocol {
    func fetchData() {
        presenter?.fetchDataSuccess()
        //        presenter?.fetchDataFailed()
    }
    
    
}
