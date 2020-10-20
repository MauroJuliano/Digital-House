//
//  UserTableViewCell.swift
//  09_28_TableView
//
//  Created by Lestad on 2020-09-28.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setup(user: User){
        userLabel.text = user.name
        userImageView.image = user.imageProfile
        emailLabel.text = user.email
        userImageView.layer.borderWidth = 1
        userImageView.layer.masksToBounds = false
        userImageView.layer.borderColor = UIColor.black.cgColor
        userImageView.layer.cornerRadius = userImageView.frame.height/2
        userImageView.clipsToBounds = true

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
