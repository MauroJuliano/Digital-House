//
//  ViewController.swift
//  Lista
//
//  Created by Lestad on 2020-09-16.
//  Copyright © 2020 Lestad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arrayItens = [Item]()
    var arrayLista: [String] = []
    
    @IBOutlet weak var tableViewLista: UITableView!
    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldQuant: UITextField!
   
    
    @IBOutlet weak var buttonSalvar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldNome.delegate = self
        textFieldQuant.delegate = self
        tableViewLista.delegate = self
        tableViewLista.dataSource = self
        // Do any additional setup after loading the view.
    }
    func getItens(item: String) -> Item? {
        if arrayItens.count > 0 {
        for itens in arrayItens {
            if itens.nome == item {
              return itens
            }
        }
     }
      return nil
    }
    
    func isvalidaCampos() -> Bool{
        if textFieldNome == nil || textFieldNome.text!.isEmpty {
            //Alerta
            print("nome vazio")
            return false
        }
        if textFieldQuant == nil || textFieldQuant.text!.isEmpty {
            //Alerta
            print("Quantidade vazia")
            return false
        }
        return true
    }
    func inserirItem(item: String, quantidade: Int){
        
        
            let novoCadastro = Item(nome: item, quantidade: quantidade)
            arrayItens.append(novoCadastro)
        
            let listaGeral = "Produto: \(novoCadastro.nome) Quantidade: \(novoCadastro.quantidade)"
            arrayLista.append(listaGeral)
            tableViewLista.reloadData()
            print("Cadastrado com sucesso")
        
        for itemCadastrado in arrayItens {
            print("\(itemCadastrado.nome) = \(itemCadastrado.quantidade)")
        }
        
    }
    func alterarItem(item: String, quantidade: Int){
            for alterar in arrayItens {
                if alterar.nome == item{
                    alterar.quantidade = quantidade
                   print("\(alterar.nome) = \(alterar.quantidade)")
                }
            }
        
    }
    func limparCampos(){
        textFieldNome.text! = ""
        textFieldQuant.text! = ""
        textFieldNome.becomeFirstResponder()
    }
    func exibeLista(){
        var listaGeral: String = ""
        
        for (index,lista) in arrayItens.enumerated(){
            listaGeral = listaGeral + "\(index + 1) - Produto: \(lista.nome) Quantidade: \(lista.quantidade) \n"
        }
      
        tableViewLista.reloadData()
    
        
    }
   
    @IBAction func buttonSalvar(_ sender: Any) {
        if isvalidaCampos(){
            let novaQuant = Int(textFieldQuant.text!)!
            if getItens(item: textFieldNome.text!) == nil {
                inserirItem(item: textFieldNome.text!, quantidade: novaQuant)
            }else {
                alterarItem(item: textFieldNome.text!, quantidade: novaQuant)
            }
            exibeLista()
        }
    }
    @IBAction func buttonLimpar(_ sender: Any) {
        limparCampos()
    }
    
    @IBAction func buttonExcluir(_ sender: Any) {
        if var removerObjeto = textFieldNome.text {
            for (index, lista) in arrayItens.enumerated(){
                if removerObjeto == lista.nome{
                    arrayItens.remove(at: index)
                }
                
            }
        }
        exibeLista()
        
}
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFieldNome {
            if let retorno = getItens(item: textField.text!){
                textFieldQuant.text! = String(retorno.quantidade)
               
                buttonSalvar.setTitle("Salvar edição", for: .normal)
            }else {
               
                buttonSalvar.setTitle("Salvar", for: .normal)
            }
        }
    }
}
extension ViewController: UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayLista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayLista[indexPath.row]
        return cell
    }
    

    
}

