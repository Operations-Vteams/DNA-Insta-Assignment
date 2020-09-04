//
//  ServiceFetchDataFromNetworkAndSaveToDatabase.swift
//  DNA Insta Assignment
//
//  Created by Ali Jawad on 03/09/2020.
//  Copyright © 2020 Next Bridge. All rights reserved.
//

import Foundation
import RxSwift

public protocol DataServiceProtocol {
    func fetchData<T: Codable>() -> Observable<T?>
}

final class ServiceFetchDataFromNetworkAndSaveToDatabase: DataServiceProtocol {
    private var networkDataFetcher: NetworkManagerProtocol
    private var databaseManager: DatabaseManagerProtocol
    private var disposeBag = DisposeBag()
    
    init(networkDataFetcher: NetworkManagerProtocol, databaseManager: DatabaseManagerProtocol) {
        self.networkDataFetcher = networkDataFetcher
        self.databaseManager = databaseManager
    }
    
    func fetchData<T: Codable>() -> Observable<T?> {
        let obs: Observable<T?> = networkDataFetcher.fetchData()
        obs.subscribe(onNext: {[weak self] element in
            self?.databaseManager.saveData(data: element)
            }).disposed(by: disposeBag)
        
        return obs
    }

}



