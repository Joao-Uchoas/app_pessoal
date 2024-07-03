//
//  CodeView.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 01/07/24.
//

import Foundation

public protocol CodeView {
    func buildViewHierarchy()

    func setupConstraints()

    func setupAdditionalConfiguration()

    func setupViewCode()
}

public extension CodeView {
    func setupViewCode() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
