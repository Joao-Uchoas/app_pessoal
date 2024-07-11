//
//  AuthCoordinator.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

class AuthCoordinator: MainCoordinator {

    override func start() {
        let startViewController = StartViewController()
        startViewController.coordinator = self
        navigationController.pushViewController(startViewController, animated: true)
    }

    func showSignIn() {
        let signInViewController = SignInViewController()
        signInViewController.coordinator = self
        navigationController.pushViewController(signInViewController, animated: true)
    }

}
