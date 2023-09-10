//
//  ContentView.swift
//  Example
//
//  Created by Kristóf Kálai on 2023. 09. 11..
//

import SwiftUI
import StatefulContainer

struct ContentView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Tap me!")
        }
        .padding()
        .onAppear {
            print("Try it as preview (ContentView_Previews)!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State private static var isOn = true

    static var previews: some View {
        VStack {
            HStack {
                Text("Doesn't work: ")
                ContentView(isOn: .constant(true))
            }

            HStack {
                Text("Doesn't work: ")
                ContentView(isOn: $isOn)
            }

            HStack {
                Text("Works: ")
                StatefulContainer(value: true, content: ContentView.init)
            }
        }
    }
}
