//
//  AppCoordinator.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

class AppCoordinator: MainCoordinator {

    override func start() {
        let authCoordinator = AuthCoordinator(navigationController)
        addChildCoordinator(authCoordinator)
        authCoordinator.start()
    }

}
