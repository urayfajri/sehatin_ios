//
//  SehatiniosappApp.swift
//  Sehatiniosapp

import SwiftUI

@main
struct SehatiniosappApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
