//
//  ViewController.swift
//  03_10_Exercise4
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var nameArrays = ["Jorge", "barbara","Jorge", "barbara","Jorge", "barbara","Jorge", "barbara","Jorge", "barbara"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nameArrays.remove(at: indexPath.row)
        print(nameArrays)
        collectionView.reloadData()
    }
}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArrays.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "APPCell", for: indexPath) as! APPCollectionCell
        cell.nameLabel.text = nameArrays[indexPath.row]
        return cell
    }
    
    
}

