//
//  SignInViewModel.swift
//  app_pessoal
//
//  Created by Uchoas Santos, Joao Vitor on 12/07/24.
//

import Foundation
import FirebaseAuth

class SignInViewModel {
    weak var coordinator: SignInCoordinator?

    func signIn(with model: SignInModel) {
        Auth.auth().signIn(withEmail: model.email, password: model.password) {  [weak self] authResult, error in
            if let error {
                print("Error signing in: \(error.localizedDescription)")
                return
            }
            
            print("User signed in successfully")
            self?.coordinator?.didFinishSignIn()
        }
    }

}
