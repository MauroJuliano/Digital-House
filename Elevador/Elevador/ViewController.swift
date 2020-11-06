//
//  ViewController.swift
//  Elevador
//
//  Created by Lestad on 2020-11-05.
//

import UIKit

class ViewController: UIViewController {
    var arrayEvelador = [Elevador]()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let elevador = Elevador(andarAtual: 1, andarGoal: 5, terreo: 0, ultimoAndar: 5, limitePessoas: 10, quantidadePessoas: 2)
        elevador.sobe()
        elevador.entrar()
        elevador.sair()
        // Do any additional setup after loading the view.
    }


}

