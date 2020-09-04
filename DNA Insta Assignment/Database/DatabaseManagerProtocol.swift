//
//  DatabaseManagerProtocol.swift
//  DNA Insta Assignment
//
//  Created by Ali Jawad on 03/09/2020.
//  Copyright © 2020 Next Bridge. All rights reserved.
//

import Foundation
import RxSwift

public protocol DatabaseManagerProtocol {
    func fetchData<T>() -> [T]?
    func saveData<D>(data: D)
}
