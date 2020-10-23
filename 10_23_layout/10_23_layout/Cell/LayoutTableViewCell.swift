//
//  LayoutTableViewCell.swift
//  10_23_layout
//
//  Created by Lestad on 2020-10-23.
//

import UIKit

class LayoutTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var estrelasLabel: UILabel!
    @IBOutlet weak var ratedLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(user: Usuario){
        nameLabel.text = user.name
        ratedLabel.text = user.rated
        commentsLabel.text = user.comments
        estrelasLabel.text = user.estrelas
        profileImageview.image = UIImage(named: "\(user.image)")
    }
}
