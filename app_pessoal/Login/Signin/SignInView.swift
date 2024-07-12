//
//  SignInView.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

class SignInView: UIView, CodeView {

    lazy var signInLabel: UILabel = {
        let label = UILabel()
        label.text = "SignIn"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = .black

        return label
    }()

    lazy var dataStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTextField])
        stack.axis = .vertical
        stack.spacing = 8
        stack.distribution = .equalSpacing
        return stack
    }()

    lazy var emailTextField = CTextField(titleP: "Digite seu email")
    lazy var passwordTextField = CTextField(titleP: "Digite sua senha", isPassword: true)

    lazy var signInButton = LargeButton(titleB: "SignIn")


    func buildViewHierarchy() {
        self.addSubview(signInLabel)
        self.addSubview(dataStackView)
        self.addSubview(signInButton)

    }

    func setupConstraints() {
        setupSignInLabelConstraint()
        setupDataStackViewConstraint()
        setupSignInButtonConstraint()
    }

    private func setupSignInLabelConstraint() {
        signInLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.centerX.equalToSuperview().offset(16)
        }
    }

    private func setupDataStackViewConstraint() {
        dataStackView.snp.makeConstraints { make in

        }
    }

    private func setupSignInButtonConstraint() {

    }

    func setupAdditionalConfiguration() {}
}
