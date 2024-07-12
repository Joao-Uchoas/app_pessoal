//
//  SignInViewController.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

class SignInViewController: UIViewController {
    var signInView = SignInView()
    var viewModel = SignInViewModel()

    override func loadView() {
        self.view = signInView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }

    @objc
    private func didTapSignInButton() {
        guard let email = signInView.emailTextField.text, !email.isEmpty,
              let password = signInView.passwordTextField.text, !password.isEmpty else {
            //ver uma forma de deixar a caixinha em vermelho, indicando que esta faltando algum campo
            return
        }
        let model = SignInModel(email: email, password: password)
        viewModel.signIn(with: model)
    }

}
