//
//  contatoTableViewCell.swift
//  26_10_tabbar
//
//  Created by Lestad on 2020-10-26.
//

import UIKit

class contatoTableViewCell: UITableViewCell {

    @IBOutlet weak var telefoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var siteLabel: UILabel!
    @IBOutlet weak var avalieLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(contato: Contato){
        telefoneLabel.text = contato.telefone
        emailLabel.text = contato.email
        siteLabel.text = contato.site
        avalieLabel.text = contato.avalie
    }
}
