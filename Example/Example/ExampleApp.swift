//
//  ExampleApp.swift
//  Example
//
//  Created by Kristóf Kálai on 2023. 09. 11..
//

import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            var isOn = true
            ContentView(isOn: .init(get: { isOn }, set: { isOn = $0 }))
        }
    }
}
