//
//  UserTableViewCell.swift
//  03_10_Exercicio1
//
//  Created by Lestad on 2020-10-03.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(user: User){
        nameLabel.text = user.name
        jobLabel.text = user.job
        emailLabel.text = user.email
    }

}
