//
//  Jardim.swift
//  09_10_datepicker
//
//  Created by Lestad on 2020-10-09.
//

import Foundation
class Jardim: Resort, Fidelidade{

    
    var fidelidade: Bool
    
    init(fidelidade: Bool,nome: String, classification: Int, taxaDiaUtil: Int, taxaDiaCorrido: Int) {
        self.fidelidade = fidelidade
        super.init(nome: nome, classification: classification, taxaDiaUtil: taxaDiaUtil, taxaDiaCorrido: taxaDiaCorrido)
    }
    
    func Fidelidade() {
        if fidelidade != true {
            self.taxaDiaUtil = 110
            self.taxaDiaCorrido = 50
        }
    }
    
}
