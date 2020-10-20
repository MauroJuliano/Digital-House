//
//  ViewController.swift
//  03_10_Exercise3
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carroCollectionView: UICollectionView!
    var carroArray = [Carro]()
    override func viewDidLoad() {
        super.viewDidLoad()
        carroCollectionView.delegate = self
        carroCollectionView.dataSource = self
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroArray.append(Carro(name: "Fusca", imagens: "cars3.png"))
        carroCollectionView.reloadData()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("clicou")
        if let viewController = UIStoryboard(name: "carroDetails", bundle: nil).instantiateInitialViewController() as? CarroDetailsViewController{
            viewController.images = carroArray[indexPath.row].imagens
            navigationController?.pushViewController(viewController, animated: true)
        }
      
    }
}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carroArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carroCell", for: indexPath) as! CarroCollectionCell
        cell.setup(carro: carroArray[indexPath.row])
        return cell
    }
    
    
}
