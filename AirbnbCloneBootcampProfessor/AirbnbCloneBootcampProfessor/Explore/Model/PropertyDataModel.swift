//
//  PropertyDataModel.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 28/08/24.
//

import Foundation

struct PropertyDataModel: Codable {
    let id: Int
    var title: String
    var subtitle: String
    var price: String
    var rating: String
    var images: [String]
    var date: String
    var isFavorite: Bool
    var status: String
    var category: String
}
