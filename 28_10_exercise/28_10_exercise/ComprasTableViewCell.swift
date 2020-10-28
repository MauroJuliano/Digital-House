//
//  ComprasTableViewCell.swift
//  28_10_exercise
//
//  Created by Lestad on 2020-10-28.
//

import UIKit

class ComprasTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(compras: Compras){
        nameLabel.text = compras.name
    }

}
