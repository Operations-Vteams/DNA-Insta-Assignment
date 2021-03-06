//
//  ViewControllerFactory.swift
//  DNA Insta Assignment
//
//  Created by Ali Jawad on 03/09/2020.
//  Copyright © 2020 Next Bridge. All rights reserved.
//

import Foundation
import UIKit

protocol ViewControllerFactory {
    func postsListViewController(selectionHandler: @escaping (PresentableFeedItem) -> Void) -> UIViewController
    func postDetailViewController(data: PresentableFeedItem) -> UIViewController
}
