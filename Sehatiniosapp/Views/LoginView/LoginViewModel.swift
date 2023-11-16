import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var groupthreeText: String = ""
    @Published var isValidGroupthreeText: Bool = true
    @Published var grouptwoText: String = ""
    @Published var isValidGrouptwoText: Bool = true
    @Published var isLoaderShow: Bool = false
    @Published var createLoginResponse: CreateLoginResponse?

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }

    func createLogin() {
        isLoaderShow = true

        let createLoginRequest = CreateLoginRequest(email: groupthreeText, password: grouptwoText)
        APIServices.shared
            .callCreateLogin(parameters: createLoginRequest.dictionary ?? [:]) { response in
                self.isLoaderShow = false
                if let response = response {
                    self.onSuccessCreateLogin(response: response)
                }
            }
            failure: { error in
                self.isLoaderShow = false
                self.onErrorCreateLogin(error: error)
            }
    }

    func onSuccessCreateLogin(response: CreateLoginResponse) {
        self.createLoginResponse = response

        self.nextScreen = "HomeView"
    }

    func onErrorCreateLogin(error: String) {
        self.showAlert("Login Failed", error)
    }
}
