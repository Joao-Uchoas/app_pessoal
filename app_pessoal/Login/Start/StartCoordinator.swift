//
//  StartCoordinator.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

class StartCoordinator: MainCoordinator {

    override func start() {
        let startViewController = StartViewController()
        startViewController.coordinator = self
        navigationController.pushViewController(startViewController, animated: true)
    }

    func showSignIn() {
        let signViewModel = SignInViewModel()
        signViewModel.coordinator = self
        navigationController.pushViewController(signViewModel, animated: true)
    }

}
