//
//  Resort.swift
//  09_10_datepicker
//
//  Created by Lestad on 2020-10-09.
//

import Foundation

class Resort{
    var nome: String
    var classification: Int
    var taxaDiaUtil: Int
    var taxaDiaCorrido: Int
    
    init(nome: String, classification: Int, taxaDiaUtil: Int, taxaDiaCorrido: Int) {
        self.nome = nome
        self.classification = classification
        self.taxaDiaUtil = taxaDiaUtil
        self.taxaDiaCorrido = taxaDiaCorrido
    }
}
