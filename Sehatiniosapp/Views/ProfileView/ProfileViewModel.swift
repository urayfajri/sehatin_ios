import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var groupfifteenText: String = ""
    @Published var groupfourteenText: String = ""
    @Published var groupthirteenText: String = ""
    @Published var isValidGroupthirteenText: Bool = true
    @Published var grouptwelveText: String = ""
    @Published var groupelevenText: String = ""
    @Published var groupeightText: String = ""
    @Published var isMenuViewShow: Bool = false
    @Published var isLeftMenuView: Bool = true

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
