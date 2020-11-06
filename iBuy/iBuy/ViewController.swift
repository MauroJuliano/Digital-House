//
//  ViewController.swift
//  iBuy
//
//  Created by Lestad on 2020-10-30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var listTableView: UITableView!
    var open = [Item]()
    var completed = [Completed]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}
extension ViewController : UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "To do"
        }else {
            return "Completed"
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return open.count
        }
            return completed.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
    }
    
    
}
