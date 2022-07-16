//
//  NumberTextField.swift
//  SearchClearTextField
//
//  Created by Jean-Nicolas on 16.07.22.
//

import SwiftUI

public struct ClearNumberTextField: View {
    @Binding public var value: Double
    public init(value: Binding<Double>) {
        self._value = value
    }
    var formatter: NumberFormatter =  {
        let f = NumberFormatter()
        f.numberStyle = .decimal
        return f }()
    @State private var valueString = ""
    
   public  var body: some View {
        TextField("0", text: $valueString)
            .clearStringButton($valueString)
            .keyboardType(.decimalPad)
            .onChange(of: valueString) {new in
                //value = NumberFormatter().number(from: new) ?? 0.0
                 value = Double(new) ?? 0.0
            }
            .onSubmit {
               // value =  NumberFormatter().number(from: valueString) ?? 0.0
                value = Double(valueString) ?? 0.0
            }.onAppear {
                valueString = formatter.string(from: value as NSNumber) ?? ""
                
            }
    }
}

struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        ClearNumberTextField(value: .constant(11.0))
    }
}
