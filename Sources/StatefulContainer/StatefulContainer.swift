//
//  StatefulContainer.swift
//
//
//  Created by Kristóf Kálai on 2023. 09. 11..
//

import SwiftUI

public struct StatefulContainer<Value, Content: View> {
    @State private var value: Value
    @ViewBuilder private var content: (Binding<Value>) -> Content

    public init(value: Value, content: @escaping (Binding<Value>) -> Content) {
        _value = State(initialValue: value)
        self.content = content
    }
}

extension StatefulContainer: View {
    public var body: some View {
        content($value)
    }
}
