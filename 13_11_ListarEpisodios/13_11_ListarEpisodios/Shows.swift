//
//  Shows.swift
//  13_11_ListarEpisodios
//
//  Created by Lestad on 2020-11-13.
//

import Foundation

class Shows: NSObject{
    var id: Int!
    var name: String!
    var genres: [String]!
    var rating: [String: Any]!
    var image: [String : String]!
    var summary: String!
    
    init(fromDictionary dictionary: [String: Any]) {
        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
        genres = dictionary["genres"] as? [String]
        rating = dictionary["rating"] as? [String : Any]
        image = dictionary["image"] as? [String : String]
        summary = dictionary["summary"] as? String
}
    func getImageSize(imagesize: ImageSize) -> String? {
        if let value = image[imagesize.rawValue]{
            return value
        }
        return nil
    }
}
