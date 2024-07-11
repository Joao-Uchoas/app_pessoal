//
//  GradientLine.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 10/07/24.
//

import UIKit

public class GradientLine: UIView {

    private var gradientLayer: CAGradientLayer!

    init(
        startColor: CGColor,
        endColor: CGColor
    ) {
        super.init(frame: .zero)
        setupGradientLayer(startColor: startColor, endColor: endColor)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupGradientLayer(startColor: CGColor, endColor: CGColor) {
        gradientLayer = CAGradientLayer()
        gradientLayer.colors = [startColor, endColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        layer.addSublayer(gradientLayer)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
