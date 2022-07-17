import SwiftUI

// UI Examples
struct ClearTextField: View {
    @State private var s: String = "ClearTextFieldClearTextFieldClearTextFieldClearTextFieldClearTextField"
    @State private var d: Double = 11.5
    var body: some View {
        UITextField.appearance().clearButtonMode = .whileEditing
       return  VStack {
            Group {
                TextField("String2", text: $s)
                TextField("String", text: $s)
                    .clearStringButton($s)
                ClearNumberTextField(value: $d)
                    .multilineTextAlignment(.trailing)
            }
            .background(.white)
            .cornerRadius(5)
        }
        .padding(20)
        .background(.yellow)
        
    }
}


struct ClearTextField_Previews: PreviewProvider {
    static var previews: some View {
        ClearTextField()
           .previewLayout(.sizeThatFits)
    }
}

