//
//  laungageApp.swift
//  laungage
//
//  Created by Sirini Karunadasa on 6/19/21.
//

import SwiftUI

@main
struct laungageApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
struct laugageApp: View {
    @State private var selectedLanguage = "English"
    let Language = ["English", "Japanese", "Spanish","French"]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Strength", selection: $selectedLanguage) {
                        ForEach(Language, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
            }
            .navigationTitle("Select your language")
        }
    }
}
