//
//  ViewController.swift
//  03_10_Exercise2
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalsTableView: UITableView!
    var animalsArray = [Animals]()
    override func viewDidLoad() {
        super.viewDidLoad()
        animalsTableView.delegate = self
        animalsTableView.dataSource = self
        animalsArray.append(Animals(name: "Jorge", breed: "vira-lata", weight: 2.1, type: "Cao"))
        animalsArray.append(Animals(name: "Barbara", breed: "siamess", weight: 5.1, type: "cat"))
        animalsArray.append(Animals(name: "Jorge", breed: "vira-lata", weight: 2.1, type: "Cao"))
        animalsArray.append(Animals(name: "Barbara", breed: "siamess", weight: 5.1, type: "cat"))
        animalsArray.append(Animals(name: "Jorge", breed: "vira-lata", weight: 2.1, type: "Cao"))
        animalsArray.append(Animals(name: "Barbara", breed: "siamess", weight: 5.1, type: "cat"))
        animalsArray.append(Animals(name: "Jorge", breed: "vira-lata", weight: 2.1, type: "Cao"))
        animalsArray.append(Animals(name: "Barbara", breed: "siamess", weight: 5.1, type: "cat"))
        animalsArray.append(Animals(name: "Jorge", breed: "vira-lata", weight: 2.1, type: "Cao"))
        animalsArray.append(Animals(name: "Barbara", breed: "siamess", weight: 5.1, type: "cat"))
        animalsTableView.reloadData()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewcontroller = UIStoryboard(name: "AnimalsDetails", bundle: nil).instantiateInitialViewController() as? AnimalsDetailsController {
            viewcontroller.name = animalsArray[indexPath.row].name
            present(viewcontroller, animated: true, completion: nil)
        }
        	
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as! AnimalsTableViewCell
        cell.setup(animals: animalsArray[indexPath.row])
        return cell
    }
    
    
}
