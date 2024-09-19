//
//  ExploreService.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 18/09/24.
//

import Foundation

class ExploreService {

  static func fetchCategoryList(completion: @escaping (Result<[TravelCategory], NetworkError>) -> Void) {
    let request = APIRequest(url: "https://run.mocky.io/v3/a8b13066-183e-4081-8873-d72dd62ddd43")

    // Nesse caso podemos fazer de 2 formas

    // 1 -> mais simples o entendimento, porem retornando o mesmo que o outro completion
    //    APIClient.shared.request(request: request, decodeType: [TravelCategory].self) { result in
    //      switch result {
    //      case .success(let success):
    //        completion(.success(success))
    //      case .failure(let failure):
    //        completion(.failure(failure))
    //      }
    //    }

    // 2 -> bem mais difícil o entendimento, porem economizando bastante linhas desnecessárias!
    APIClient.shared.request(request: request, decodeType: [TravelCategory].self, completion: completion)
  }


}
