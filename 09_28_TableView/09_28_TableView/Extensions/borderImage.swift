//
//  borderImage.swift
//  09_28_TableView
//
//  Created by Lestad on 2020-09-28.
//

import Foundation
import UIKit
class borderImage: UIImageView{
    override func awakeFromNib() {
        self.layoutIfNeeded()
        layer.cornerRadius = self.frame.height / 10.0
        layer.masksToBounds = true
    }
}
