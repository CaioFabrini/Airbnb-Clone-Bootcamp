//
//  FavoriteViewController.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Caio Fabrini on 05/08/24.
//

import Foundation
import UIKit

class FavoriteViewController: UIViewController {

  var screen: FavoriteScreen?

  override func loadView() {
    screen = FavoriteScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()

  }

}
