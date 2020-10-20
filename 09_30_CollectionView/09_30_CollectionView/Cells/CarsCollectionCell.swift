//
//  CarsCollectionCell.swift
//  09_30_CollectionView
//
//  Created by Lestad on 2020-09-30.
//

import UIKit

class CarsCollectionCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
     func setup(cars: Cars){
        imageView.image = UIImage(named: cars.imageCar)
    }
}
//
