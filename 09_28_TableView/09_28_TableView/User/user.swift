//
//  user.swift
//  09_28_TableView
//
//  Created by Lestad on 2020-09-28.
//

import Foundation
import UIKit

class User{
    var name: String
    var imageProfile: UIImage
    var email: String
    
    init(name: String, imageProfile: UIImage, email: String) {
        self.name = name
        self.imageProfile = imageProfile
        self.email = email
    }
}
