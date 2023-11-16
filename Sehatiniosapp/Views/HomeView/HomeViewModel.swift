import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    struct TutorialItem: Identifiable {
        let id: UUID = .init()
        let index: Int
    }

    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var slidermaskgroupCurrentPage: Int = 0
    @Published var sliderData: [TutorialItem] = [
        TutorialItem(index: 0)
    ]

    @Published var groupfortyeight: String = ""
    @Published var groupfortyfiveText: String = ""
    @Published var groupfortyfourText: String = ""
    @Published var isMenuViewShow: Bool = false
    @Published var isLeftMenuView: Bool = true

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
