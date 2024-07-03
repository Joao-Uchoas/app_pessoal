//
//  LoginView.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 01/07/24.
//

import Foundation
import UIKit

class LoginView: UIStackView, CodeView {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()

    lazy var contentLoginStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 8
        stack.distribution = .equalCentering
        stack.alignment = .center
        stack.axis = .vertical
        return stack
    }()

    lazy var userTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite seu email"
        tf.borderStyle = .roundedRect
        return tf
    }()

    lazy var passTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite sua senha"
        tf.isSecureTextEntry = true
        tf.borderStyle = .roundedRect
        return tf
    }()

    lazy var userTF = CTextField(titleP: "Digite seu email")
    lazy var passwordTF = CTextField(titleP: "Digite sua senha")

    lazy var buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Login", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 5
        return button
    }()

    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViewCode()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - CodeView
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(contentLoginStackView)
        contentLoginStackView.addArrangedSubview(userTF)
        contentLoginStackView.addArrangedSubview(passwordTF)

        addSubview(buttonLogin)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

            contentLoginStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 128),
            contentLoginStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            contentLoginStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

            userTF.leadingAnchor.constraint(equalTo: contentLoginStackView.leadingAnchor),
            userTF.trailingAnchor.constraint(equalTo: contentLoginStackView.trailingAnchor),
            passwordTF.leadingAnchor.constraint(equalTo: contentLoginStackView.leadingAnchor),
            passwordTF.trailingAnchor.constraint(equalTo: contentLoginStackView.trailingAnchor),


            buttonLogin.topAnchor.constraint(equalTo: contentLoginStackView.bottomAnchor, constant: 16),
            buttonLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            buttonLogin.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),

            buttonLogin.heightAnchor.constraint(equalToConstant: 50),


        ])
    }

    func setupAdditionalConfiguration() {
        self.alignment = .center
        self.axis = .horizontal
        passwordTF.isSecureTextEntry = true
    }


}
