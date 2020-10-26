//
//  CarTableViewCell.swift
//  26_10_tabbar
//
//  Created by Lestad on 2020-10-26.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(car: Car){
        carNameLabel.text = car.name
        carImageView.image = UIImage(named: car.image)
    }

}
