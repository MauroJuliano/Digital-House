//
//  AnimalsTableViewCell.swift
//  03_10_Exercise2
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(animals: Animals){
        nameLabel.text = animals.name
        breedLabel.text = animals.breed
        weightLabel.text = String(animals.weight)
        typeLabel.text = animals.type
    }
}
