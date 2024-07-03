//
//  LoginViewController.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 01/07/24.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var loginView: LoginView?

    override func loadView() {
        self.loginView = LoginView()
        self.view = self.loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView?.buttonLogin.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
    }

    @objc
    func didTapLogin(){
        print("estou logado")
    }
}
