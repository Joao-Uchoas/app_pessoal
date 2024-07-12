//
//  SignInCoordinator.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 12/07/24.
//

import Foundation

class SignInCoordinator: MainCoordinator {
    
    override func start() {
        let signInVC = SignInViewController()
        let viewModel = SignInViewModel()

        viewModel.coordinator = self
        signInVC.viewModel = viewModel
        navigationController.pushViewController(signInVC, animated: false)
    }

    func didFinishSignIn(){
        let mainCoordinator = MainCoordinator(navigationController)
        childCoordinators.append(mainCoordinator)
        mainCoordinator.start()
    }

}
