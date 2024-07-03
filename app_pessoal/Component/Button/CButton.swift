//
//  CButton.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 01/07/24.
//

import Foundation
import UIKit

public class CButton: UIControl {

    // MARK: - Inicialize
    public init(
        title: String? = nil,
        size: Size,
        background: UIColor? = nil
    ){
        self.title = title
        self.size = size
        super.init(frame: .zero)
        setupViewCode()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Attributes

    /// The button title
    public var title: String? {
        didSet { setupTitle() }
    }

    public var size: Size {
        didSet { setupSize() }
    }

    // MARK: - Override

    // MARK: - Private Attributes
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .black

        return label
    }()

    private let contentStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .center
        stack.spacing = 4
        stack.isUserInteractionEnabled = false
        return stack
    }()

    // MARK: - Private Methods
    private func setupTitle() {
        titleLabel.text = title
    }

    private func setupSize() {
        switch size {
        case .large:
            contentStackView.isLayoutMarginsRelativeArrangement = false
        case .small, .medium:
            contentStackView.layoutMargins = UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
            contentStackView.isLayoutMarginsRelativeArrangement = true
        }
    }

}
extension CButton: CodeView {
    public func buildViewHierarchy() {
        addSubview(contentStackView)
        contentStackView.addArrangedSubview(titleLabel)
    }

    public func setupConstraints() {
        NSLayoutConstraint.activate([
            contentStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            contentStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),

            contentStackView.widthAnchor.constraint(equalToConstant: 50),
            contentStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    public func setupAdditionalConfiguration() {
        setupTitle()
    }


}


public extension CButton {
    /// The CButton sizes
    enum Size: String, CaseIterable {
        case small
        case medium
        case large

        var height: CGFloat {
            switch self {
            case .small: return 32
            case .medium: return 48
            case .large: return 56
            }
        }
    }
}
