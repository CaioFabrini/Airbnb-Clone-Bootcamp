//
//  User.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 02/10/24.
//

import Foundation

struct User: Codable {
  let id: String
  let email: String
  let name: String
  let userImage: String
  let favorite: [Int]
}
