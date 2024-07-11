//
//  LargeButton.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 02/07/24.
//

import UIKit

class LargeButton: UIButton {

    // MARK: - Inicialize
    public init(
        titleB: String? = nil,
        image: UIImage? = nil,
        titleColor: UIColor? = nil,
        backgroundC: UIColor? = nil
    ){
        self.titleB = titleB
        self.titleColor = titleColor ?? UIColor.black
        self.backgroundC = backgroundC ?? UIColor.white
        super.init(frame: .zero)

        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Attributes
    public var titleB: String? {
        didSet { setupTitle() }
    }

    public var titleColor = UIColor()
    public var backgroundC = UIColor()

    // MARK: - Private Methods
    private func setup(){
        setupTitle()
        setupConstraints()
    }

    private func setupTitle() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitleColor(self.titleColor, for: .normal)
        self.setTitle(self.titleB, for: .normal)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.gray.withAlphaComponent(0.6).cgColor
        self.layer.cornerRadius = 25
        self.backgroundColor = self.backgroundC
    }
    func setupConstraints() {
        self.snp.makeConstraints { make in
            make.height.equalTo(60)
        }
    }

}
