//
//  PostListCell.swift
//  DNA Insta Assignment
//
//  Created by Ali Jawad on 03/09/2020.
//  Copyright © 2020 Next Bridge. All rights reserved.
//

import Foundation
import UIKit

final class PostListCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.textLabel?.numberOfLines = 0
        self.textLabel?.lineBreakMode = .byWordWrapping
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


final class PostListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
}
