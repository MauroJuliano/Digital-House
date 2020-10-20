//
//  ViewController.swift
//  09_30_CollectionView
//
//  Created by Lestad on 2020-09-30.
//

import UIKit

class ViewController: UIViewController {
    var arrayCar = [Cars]()
    @IBOutlet weak var collectionViewList: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewList.delegate = self
        collectionViewList.dataSource = self
        arrayCar.append(Cars(imageCar: "cars1.jpg"))
        arrayCar.append(Cars(imageCar: "cars2.jpg"))
        arrayCar.append(Cars(imageCar: "cars3.png"))
        arrayCar.append(Cars(imageCar: "cars4.jpg"))
    }


}
extension ViewController: UICollectionViewDelegate{
    
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as! CarsCollectionCell
        cell.setup(cars: arrayCar[indexPath.row])
        
        return cell
    }
    
    
}

