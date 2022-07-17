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
        ZStack {
            content
                .padding(.trailing, fieldText.isEmpty ? 0 : 30)
            if !fieldText.isEmpty {
                HStack {
                    Spacer()
                Button {
                    fieldText = ""
                } label: {
                    Image(systemName: "multiply.circle.fill")
                }
                .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
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
