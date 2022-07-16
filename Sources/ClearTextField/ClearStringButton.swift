//
//  SearchClearTextField.swift
//  SearchClearTextField
//
//  Created by Jean-Nicolas on 16.07.22.
//

import SwiftUI

public struct ClearStringButton: ViewModifier {
    @Binding public var fieldText: String

    public func body(content: Content) -> some View {
        content
            .overlay {
                if !fieldText.isEmpty {
                    HStack {
                        Spacer()
                        Button {
                            fieldText = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                        }
                        .foregroundColor(.secondary)
                        .padding(.trailing, 4)
                    }
                }
            }
    }
}

public extension View {
    func clearStringButton(_ text: Binding<String>) -> some View {
        self.modifier(ClearStringButton(fieldText: text))
    }
}
