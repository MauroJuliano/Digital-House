//
//  ViewController.swift
//  26_10_tabbar
//
//  Created by Lestad on 2020-10-26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carTableView: UITableView!
    var cars = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.navigationBar.isHidden = true
        cars.append(Car(name: "Gol", image: "cars1"))
        cars.append(Car(name: "fusca", image: "cars2"))
        cars.append(Car(name: "Gol", image: "cars3"))
        cars.append(Car(name: "fusca", image: "cars4"))
        cars.append(Car(name: "Gol", image: "cars1"))
        cars.append(Car(name: "fusca", image: "cars2"))
        cars.append(Car(name: "Gol", image: "cars3"))
        cars.append(Car(name: "fusca", image: "cars4"))
        carTableView.delegate = self
        carTableView.dataSource = self
        carTableView.reloadData()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController{
            vc.carDetail = cars[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
extension ViewController:UITableViewDataSource{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cars.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath) as! CarTableViewCell
    cell.setup(car: cars[indexPath.row])
    return cell
}

    
}

