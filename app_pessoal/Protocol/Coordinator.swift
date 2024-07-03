//
//  Coordinator.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 01/07/24.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
