//
//  ExploreViewController.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 05/08/24.
//

import Foundation
import UIKit

class ExploreViewController: UIViewController {

  var screen: ExploreScreen?

  override func loadView() {
    screen = ExploreScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  
  }

}
