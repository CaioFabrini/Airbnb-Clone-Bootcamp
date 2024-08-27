//
//  ExploreViewModel.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 26/08/24.
//

import Foundation

class ExploreViewModel {

  private var categoryList: [TravelCategory] = [
      TravelCategory(image: "ticket", category: "Icônicos", isSelected: true),
      TravelCategory(image: "house.and.flag.fill", category: "Chalés"),
      TravelCategory(image: "beach.umbrella", category: "Em frente à praia"),
      TravelCategory(image: "sun.horizon.fill", category: "Vistas incríveis"),
      TravelCategory(image: "fireworks", category: "Castelos"),
      TravelCategory(image: "flame", category: "Em alta"),
      TravelCategory(image: "tree", category: "Ilhas"),
      TravelCategory(image: "figure.pool.swim", category: "Lago"),
      TravelCategory(image: "sailboat", category: "Barcos"),
      TravelCategory(image: "snowflake", category: "Ártico"),
  ]

  var numberOfItems: Int {
    return categoryList.count
  }

  func loadCurrentTravelCategory(indexPath: IndexPath) -> TravelCategory {
    return categoryList[indexPath.row]
  }

  func getCategory(indexPath: IndexPath) -> String {
    return loadCurrentTravelCategory(indexPath: indexPath).category
  }


}
