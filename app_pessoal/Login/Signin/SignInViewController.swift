//
//  SignInViewController.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

class SignInViewController: UIViewController {
    weak var coordinator: AuthCoordinator?
    var sigInView = SignInView()

    override func loadView() {
        self.view = sigInView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }

}
