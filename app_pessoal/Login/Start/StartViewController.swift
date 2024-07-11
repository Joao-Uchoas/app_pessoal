//
//  StartViewController.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 02/07/24.
//

import UIKit

class StartViewController: UIViewController {
    weak var coordinator: AuthCoordinator?
    var startView = StartView()

    override func loadView() {
        self.view = self.startView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        startView.signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }

    @objc func signInTapped() {
        coordinator?.showSignIn()
    }

}
