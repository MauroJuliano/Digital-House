//
//  ViewController.swift
//  13_11_ListarEpisodios
//
//  Created by Lestad on 2020-11-13.
//

import UIKit
import Alamofire
enum ImageSize: String{
    case medium = "medium"
    case original = "original"
}
class ViewController: UIViewController {
    @IBOutlet var showTableView: UITableView!
    var showList = [Shows]()
    override func viewDidLoad() {
        super.viewDidLoad()
        AF.request("https://api.tvmaze.com/shows?page=1").responseJSON { response in
            if let shows = response.value as? [[String: Any]] {
                for show in shows {
                    
                    
                    let object = Shows(fromDictionary: show)
                    let imagem = object.getImageSize(imagesize: .medium)
                    print(imagem)
                    self.showList.append(object)
                    
                }
                self.showTableView.reloadData()
            }
            
        }
        showTableView.delegate = self
        showTableView.dataSource = self
        showTableView.reloadData()
        // Do any additional setup after loading the view.
    }



}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(showList[indexPath.row].rating["average"])
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showCell", for: indexPath) as! ShowsTableViewCell
        cell.setup(show: showList[indexPath.row])
        return cell
    }
    
    
}

