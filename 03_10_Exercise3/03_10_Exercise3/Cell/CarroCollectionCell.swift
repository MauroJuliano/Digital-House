//
//  CarroCollectionCell.swift
//  03_10_Exercise3
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class CarroCollectionCell: UICollectionViewCell {
    @IBOutlet weak var carroImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(carro: Carro){
        carroImageView.image = UIImage(named: carro.imagens)
        nameLabel.text = carro.name
    }
}
