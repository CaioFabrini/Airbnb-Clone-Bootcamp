//
//  ExploreViewModel.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 26/08/24.
//

import Foundation

protocol ExploreViewModelProtocol: AnyObject {
  func success()
  func failure(errorMessage: String)
}

class ExploreViewModel {

  weak var delegate: ExploreViewModelProtocol?

  private var properties: [PropertyDataModel] = []
  private var categoryList: [TravelCategory] = []

  func fetchAllMockRequest() {
    fetchPropertiesListMock { [weak self] in
      guard let self else { return }
      fetchCategoryListMock()
    }
  }

  func fetchPropertiesListMock(completion: @escaping () -> Void) {
    LocalFileReader.loadJSON(fileName: "place", type: [PropertyDataModel].self) { [weak self] result in
      guard let self else { return }
      switch result {
      case .success(let success):
        properties = success
        completion()
      case .failure(let failure):
        delegate?.failure(errorMessage: failure.errorDescription ?? "")
        return 
      }
    }
  }

  func fetchCategoryListMock() {
    LocalFileReader.loadJSON(fileName: "category", type: [TravelCategory].self) { [weak self] result in
      guard let self else { return }
      switch result {
      case .success(let success):
        categoryList = success
        delegate?.success()
      case .failure(let failure):
        delegate?.failure(errorMessage: failure.errorDescription ?? "")
      }
    }
  }

  func fetchCategoryList() {
    ExploreService.fetchCategoryList() { [weak self] result in
      guard let self else { return }
      switch result {
      case .success(let success):
        categoryList = success
        delegate?.success()
      case .failure(let failure):
        delegate?.failure(errorMessage: failure.errorDescription ?? "")
      }
    }
  }


  var getSelectedCategoryIndex: Int {
    return categoryList.firstIndex(where: { $0.isSelected }) ?? 0
  }

  var numberOfItems: Int {
    return categoryList.count
  }

  func loadCurrentTravelCategory(indexPath: IndexPath) -> TravelCategory {
    return categoryList[indexPath.row]
  }

  func getCategory(indexPath: IndexPath) -> String {
    return loadCurrentTravelCategory(indexPath: indexPath).category
  }

  func setSelectedCategory(indexPath: IndexPath) {
    let selectedPosition = indexPath.row
    categoryList.indices.forEach { index in
      categoryList[index].isSelected = index == selectedPosition
    }
  }

  var numberOfRowsPropertyData: Int {
    return properties.count
  }

  func loadCurrentPropertyData(indexPath: IndexPath) -> PropertyDataModel {
    return properties[indexPath.row]
  }
}
