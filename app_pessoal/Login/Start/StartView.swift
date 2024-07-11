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
        label.text = "Login"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()

    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "eNotaMaster_logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    lazy var contentLoginView: UIView = {
        let view = UIView()
        return view
    }()

    lazy var gradientView: UIView = {
        let view = UIView()
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.3, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.3, y: 1.0)
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = self.bounds
        return view
    }()

    //Botões das plataformas Apple e Google
    lazy var platformsStackView: UIStackView = {
        let stack = UIStackView()
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

    lazy var signInButton = LargeButton(
        titleB: "Password",
        backgroundC: UIColor(red: 213/255, green: 220/255, blue: 220/255, alpha: 1.0)
    )

    // Espaço stack view com linha e texto
    lazy var leftGradientLineView = createLeftGradientLineView()
    lazy var rightGradientLineView = createRightGradientLineView()

    lazy var spaceStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            leftGradientLineView,
            textLineLabel,
            rightGradientLineView
        ])
        
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = 2
        return stack
    }()

    lazy var textLineLabel: UILabel = {
        let label = UILabel()
        label.text = "Ou"
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .center
        return label
    }()

    //texto e um botao para sign up
    lazy var textSignUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Você não tem uma conta?"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .white
        label.textAlignment = .right
        return label
    }()

    lazy var textButtonSignUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Cadastre-se"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = UIColor(red: 213/255, green: 220/255, blue: 220/255, alpha: 1.0)
        label.textAlignment = .left
        return label
    }()

    lazy var signUpStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [textSignUpLabel, textButtonSignUpLabel])
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = 4
        return stack
    }()


    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 223/255, green: 230/255, blue: 230/255, alpha: 1.0)
        setupViewCode()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - CodeView
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(imageView)
        addSubview(gradientView)
        addSubview(contentLoginView)

        contentLoginView.addSubview(platformsStackView)
        contentLoginView.addSubview(spaceStackView)
        contentLoginView.addSubview(signInButton)
        contentLoginView.addSubview(signUpStackView)

        platformsStackView.addArrangedSubview(googleButton)
        platformsStackView.addArrangedSubview(appleButton)
    }

    func setupConstraints() {
        self.configTitleConstraints()
        self.configImageConstraints()
        self.gradientViewConstraints()
        self.contentLoginConstraints()
        self.configPlatformsConstraints()
        self.configOrLineConstraints()
        self.buttonPasswordConstraints()
        self.textWithButtonConstraints()
    }

    private func configTitleConstraints() {
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
        }
    }

    private func configImageConstraints() {
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.bottom.equalTo(gradientView.snp.top)
        }
    }

    private func gradientViewConstraints() {
        gradientView.snp.makeConstraints { make in
            make.top.equalTo(contentLoginView.snp.top)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }

    private func contentLoginConstraints() {
        contentLoginView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.centerY).offset(70)
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }

    private func configPlatformsConstraints(){
        platformsStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
        }
    }

    private func configOrLineConstraints(){
        spaceStackView.snp.makeConstraints { make in
            make.top.equalTo(platformsStackView.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.height.equalTo(20)
        }

        leftGradientLineView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.45)
        }

        rightGradientLineView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.45)
        }
    }

    private func buttonPasswordConstraints() {
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(spaceStackView.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
        }
    }

    private func textWithButtonConstraints() {
        signUpStackView.snp.makeConstraints { make in
            make.top.equalTo(signInButton.snp.bottom).offset(16)
            make.centerX.equalToSuperview().offset(16)
        }
    }

    func setupAdditionalConfiguration() {}

    override func layoutSubviews() {
        super.layoutSubviews()
        // Atualiza o frame do gradiente na view do gradiente
        if let gradientLayer = gradientView.layer.sublayers?.first as? CAGradientLayer {
            gradientLayer.frame = gradientView.bounds
        }
    }

    private func createLeftGradientLineView() -> UIView {
        return GradientLine(startColor: UIColor.clear.cgColor, endColor: UIColor.white.cgColor)
    }

    private func createRightGradientLineView() -> UIView {
        return GradientLine(startColor: UIColor.white.cgColor, endColor: UIColor.clear.cgColor)
    }

}

