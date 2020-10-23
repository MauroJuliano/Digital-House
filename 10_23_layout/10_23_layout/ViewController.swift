//
//  ViewController.swift
//  10_23_layout
//
//  Created by Lestad on 2020-10-23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layoutTableview: UITableView!
    var userArray = [Usuario]()
    override func viewDidLoad() {
        super.viewDidLoad()
        userArray.append(Usuario(name: "Espisódio 5, temporada 6 masterCheff Brasil..", estrelas: "⭐️⭐️⭐️", rated: "(415 avaliações)", comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "dev2"))
        userArray.append(Usuario(name: "Iron Man", estrelas: "⭐️⭐️⭐️⭐️⭐️", rated: "(415 avaliações)", comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna", image: "image"))
        userArray.append(Usuario(name: "Espisódio 5, temporada 6 m..", estrelas: "⭐️⭐️⭐️", rated: "(415 avaliações)", comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "dev1"))
        layoutTableview.delegate = self
        layoutTableview.dataSource = self
        layoutTableview.reloadData()
        
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "layoutCell", for: indexPath) as! LayoutTableViewCell
        cell.setup(user: userArray[indexPath.row])
        return cell
    }
    
    
}
