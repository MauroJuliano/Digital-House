//
//  Elevador.swift
//  Elevador
//
//  Created by Lestad on 2020-11-05.
//

import Foundation

class Elevador {
    var andarAtual: Int?
    var andarGoal: Int?
    var terreo: Int?
    var ultimoAndar: Int?
    var limitePessoas: Int?
    var quantidadePessoas: Int?
    
    init(andarAtual: Int, andarGoal: Int, terreo: Int, ultimoAndar: Int, limitePessoas: Int, quantidadePessoas: Int) {
        self.andarAtual = andarAtual
        self.andarGoal = andarGoal
        self.terreo = terreo
        self.ultimoAndar = ultimoAndar
        self.limitePessoas = limitePessoas
        self.quantidadePessoas = quantidadePessoas
    }
    
    func entrar(){
        if let quantidade = quantidadePessoas, let limite = limitePessoas {
        if quantidade < limite {
            quantidadePessoas = quantidadePessoas! + 1
            print("entrada permitida, agora possui \(quantidadePessoas!) pessoas no elevador")
        }else{
            print("Elevador esta cheio")
        }
        }
    }
    func sair(){
        if let quantidade = quantidadePessoas {
            if quantidade > 0{
                print("saiu uma pessoa, agora possui \(quantidadePessoas! - 1) pessoas no elevador")
            }
        }
    }
    func sobe(){
        if andarAtual! >= terreo! && andarGoal! <= ultimoAndar! {
            if let goal = andarGoal, let atual = andarAtual{
            let total = goal - atual
            print("subiu \(total) andares, voce esta agora no \(andarGoal!)")
            }
        }else{
            print("nao segue as regras")
        }
    }
    func descer(){
        if andarAtual! >= terreo! && andarGoal! <= ultimoAndar! {
            
            if let goal = andarGoal, let atual = andarAtual{
                let total = goal - atual
                print("desceu \(total) andares, voce esta agora no \(andarGoal!)")
            }
            
        }else{
            print("nao segue as regras")
        }
    }
}


