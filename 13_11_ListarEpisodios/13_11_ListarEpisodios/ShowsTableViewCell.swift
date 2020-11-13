//
//  ShowsTableViewCell.swift
//  13_11_ListarEpisodios
//
//  Created by Lestad on 2020-11-13.
//

import UIKit
import Kingfisher


class ShowsTableViewCell: UITableViewCell {
    @IBOutlet var showImageView: UIImageView!
    @IBOutlet var titleShowLabel: UILabel!
    @IBOutlet var genresLabel: UILabel!
    @IBOutlet var summaryLabel: UILabel!
    @IBOutlet var ratingsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(show: Shows){
        
        let imageHeader = (show.image.flatMap({ (key, value) -> String in
            if "\(key)" == "original" {
                
                let url = URL(string: "\(value)")
                showImageView.kf.setImage(with: url)
                return "\(value)"
            }
            return ""
        }) as Array).joined(separator: "")
                
        titleShowLabel.text = show.name
        let genres = show.genres.joined(separator: ", ")
        genresLabel.text = genres
        summaryLabel.text = show.summary.html2AttributedString
        
     ratingsLabel.text = show.rating["average"] as? String
        
    }
}
extension String {
    var html2AttributedString: String? {
    guard let data = data(using: .utf8) else { return nil }
    do {
        return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil).string

    } catch let error as NSError {
        print(error.localizedDescription)
        return  nil
    }
  }
}
