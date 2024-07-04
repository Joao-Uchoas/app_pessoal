//
//  StartView.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 02/07/24.
//

import UIKit
import Foundation

class StartView: UIView, CodeView {
    //texto de login - feito
    //imagem
    //view que a parte de cima sera transparente e a parte de baixo vai comecar transparente até o 100% - comecei
    //na view tera dois botoes o primeiro para logar com a conta do google e outro para logar com a conta ios
    //tera uma linha or linha
    //um botao para logar com senha
    //um texto para criar conta e um botao no formato texto de sign up

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textAlignment = .center
        return label
    }()

    lazy var contentLoginView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var contentLoginStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .equalCentering
        stack.spacing = 4
        return stack
    }()

    let gradientLayer = CAGradientLayer()

    lazy var plataformsStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 4

        return stack
    }()

    lazy var googleButton = LargeButton(
        titleB: "Google"
    )
    lazy var appleButton = LargeButton(
        titleB: "Apple"
    )

    //falta fazer a linha do or e criar o botao, logo apos comecar a fazer a parte do login e a integracao com o authenticator do firebase
    lazy var lineLView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    lazy var lineRView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    lazy var spaceStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .equalCentering
        stack.spacing = 4
        return stack
    }()

    lazy var textLineLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ou"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center

        return label
    }()


    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1.0)
        setupViewCode()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - CodeView
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(contentLoginView)

        contentLoginView.addSubview(contentLoginStackView)
        contentLoginView.addSubview(spaceStackView)

        contentLoginStackView.addArrangedSubview(googleButton)
        contentLoginStackView.addArrangedSubview(appleButton)

        spaceStackView.addArrangedSubview(lineLView)
        spaceStackView.addArrangedSubview(textLineLabel)
        spaceStackView.addArrangedSubview(lineRView)

    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

            contentLoginView.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 32),
            contentLoginView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentLoginView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentLoginView.trailingAnchor.constraint(equalTo: self.trailingAnchor),

            contentLoginStackView.topAnchor.constraint(equalTo: contentLoginView.topAnchor),
            contentLoginStackView.leadingAnchor.constraint(equalTo: contentLoginView.leadingAnchor),
            contentLoginStackView.trailingAnchor.constraint(equalTo: contentLoginView.trailingAnchor),

            googleButton.topAnchor.constraint(equalTo: contentLoginStackView.topAnchor),
            googleButton.leadingAnchor.constraint(equalTo: contentLoginStackView.leadingAnchor, constant: 16),
            googleButton.trailingAnchor.constraint(equalTo: contentLoginStackView.trailingAnchor, constant: -16),
            googleButton.heightAnchor.constraint(equalToConstant: 50),

            appleButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor),
            appleButton.leadingAnchor.constraint(equalTo: contentLoginStackView.leadingAnchor, constant: 16),
            appleButton.trailingAnchor.constraint(equalTo: contentLoginStackView.trailingAnchor, constant: -16),
            appleButton.heightAnchor.constraint(equalToConstant: 50),

            spaceStackView.topAnchor.constraint(equalTo: appleButton.bottomAnchor, constant: 16),
            spaceStackView.bottomAnchor.constraint(equalTo: contentLoginStackView.bottomAnchor, constant: -32),
            spaceStackView.leadingAnchor.constraint(equalTo: contentLoginStackView.leadingAnchor),
            spaceStackView.trailingAnchor.constraint(equalTo: contentLoginStackView.trailingAnchor),


            lineLView.heightAnchor.constraint(equalToConstant: 1),
            lineRView.heightAnchor.constraint(equalToConstant: 1),
        ])
    }

    func setupAdditionalConfiguration() {
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor]
        gradientLayer.frame = contentLoginView.bounds
        contentLoginView.layer.addSublayer(gradientLayer)

    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = contentLoginView.bounds //Serve para atualizar o frame da camada de gradiente
    }

}

