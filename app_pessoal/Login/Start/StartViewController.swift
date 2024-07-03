//
//  StartViewController.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 02/07/24.
//

import UIKit

class StartViewController: UIViewController {

    var startView: StartView?

    override func loadView() {
        self.startView = StartView()
        self.view = self.startView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
