//
//  MainCoordinar.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 01/07/24.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {

  var navigationController: UINavigationController

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let startViewController = StartViewController()
    navigationController.pushViewController(startViewController, animated: false)
  }

}
