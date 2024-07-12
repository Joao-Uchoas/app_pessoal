//
//  CTextField.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 02/07/24.
//

import UIKit

public class CTextField: UITextField {
    // MARK: - Inicialize
    public init(
        titleP: String? = nil,
        background: UIColor? = nil,
        isPassword: Bool? = false
    ){
        self.titleP = titleP
        self.isPassword = isPassword
        super.init(frame: .zero)

        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Attributes
    public var titleP: String? {
        didSet { setupPlaceholder() }
    }

    public var isPassword: Bool? {
        didSet{ setupIsPassword() }
    }


    // MARK: - Private Methods
    private func setupPlaceholder() {
        self.placeholder = self.titleP
    }

    private func setupIsPassword() {
        self.isSecureTextEntry = isPassword ?? false
    }

    private func setup(){
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
        setupPlaceholder()
    }

}


