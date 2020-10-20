//
//  ViewController.swift
//  09_28_TableView
//
//  Created by Lestad on 2020-09-28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayUser = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        arrayUser.append(User(name: "Paula", imageProfile: UIImage(named: "dev1.jpg")!, email: "paula@email.com"))
        arrayUser.append(User(name: "Joana", imageProfile: UIImage(named: "dev2.jpg")!, email: "joana@gmail.com"))
        arrayUser.append(User(name: "Bob", imageProfile: UIImage(named: "dev3.jpg")!, email: "bob@email.com"))
        arrayUser.append(User(name: "Alysson", imageProfile: UIImage(named: "dev4.jpg")!, email: "alli@email.com"))
        arrayUser.append(User(name: "Lucy", imageProfile: UIImage(named: "dev5.jpg")!, email: "lucy@email.com"))
        
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(arrayUser[indexPath.row].name)
        
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayUser.remove(at: indexPath.row)
        
        tableView.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCustom", for: indexPath) as! UserTableViewCell
       
        cell.setup(user: arrayUser[indexPath.row])
        return cell
    }
    

    
}

