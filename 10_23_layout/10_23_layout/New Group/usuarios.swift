//
//  usuarios.swift
//  10_23_layout
//
//  Created by Lestad on 2020-10-23.
//

import Foundation
class Usuario{
    var name: String
    var estrelas: String
    var rated: String
    var comments: String
    var image: String
    init(name: String, estrelas: String, rated: String, comments: String, image: String) {
        self.name = name
        self.estrelas = estrelas
        self.rated = rated
        self.comments = comments
        self.image = image
    }
}
