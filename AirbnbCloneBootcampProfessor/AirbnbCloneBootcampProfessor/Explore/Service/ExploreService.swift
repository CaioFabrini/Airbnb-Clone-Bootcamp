//
//  ExploreService.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 05/09/24.
//

import Foundation

struct ExploreService {

  static func loadJSON(completion: (Result<[TravelCategory], Error>) -> Void) {
    guard let url = Bundle.main.url(forResource: "category", withExtension: "json") else {
      completion(.failure(NSError(domain: "falha ao encontrar o arquivo", code: -1)))
      return
    }

    do {
      let data = try Data(contentsOf: url)
      let listTravelCategory = try JSONDecoder().decode([TravelCategory].self, from: data)
      completion(.success(listTravelCategory))
    } catch {
      completion(.failure(error))
    }
  }
}
