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
        background: UIColor? = nil
    ){
        self.titleP = titleP
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


    // MARK: - Private Methods
    private func setupPlaceholder() {
        self.placeholder = self.titleP
    }

    private func setup(){
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
        setupPlaceholder()

    }

}


