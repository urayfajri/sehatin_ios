import Foundation
import SwiftUI

class RegisterViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var groupsixtytwoText: String = ""
    @Published var groupsixtyoneText: String = ""
    @Published var groupsixtyText: String = ""
    @Published var groupfiftynineText: String = ""
    @Published var isValidGroupfiftynineText: Bool = true
    @Published var groupfiftysevenText: String = ""
    @Published var isValidGroupfiftysevenText: Bool = true
    @Published var groupfiftysixText: String = ""
    @Published var isValidGroupfiftysixText: Bool = true

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
