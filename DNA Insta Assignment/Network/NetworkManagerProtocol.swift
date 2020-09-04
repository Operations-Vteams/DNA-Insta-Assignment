//
//  NetworkManagerProtocol.swift
//  DNA Insta Assignment
//
//  Created by Ali Jawad on 03/09/2020.
//  Copyright © 2020 Next Bridge. All rights reserved.
//

import Foundation
import RxSwift

public protocol NetworkManagerProtocol {
    func fetchData<T: Codable>() -> Observable<T?>
    
}
