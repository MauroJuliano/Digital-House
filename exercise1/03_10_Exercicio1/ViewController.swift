//
//  ViewController.swift
//  03_10_Exercicio1
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTableView: UITableView!
    var userarray = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        userTableView.delegate = self
        userTableView.dataSource = self
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userarray.append(User(name: "Barbara", job: "Healer", email: "barbarahealer@genshin.com"))
        userarray.append(User(name: "Lestad", job: "Traveller", email: "lestad@genshin.com"))
        userTableView.reloadData()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = UIStoryboard(name: "userDetails", bundle: nil).instantiateInitialViewController() as? userDetailsViewController{
            vc.name = userarray[indexPath.row].name
            present(vc, animated: true, completion: nil)
        }
        
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        cell.setup(user: userarray[indexPath.row])
        return cell
    }
    
    
}
