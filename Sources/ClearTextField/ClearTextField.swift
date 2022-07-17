import SwiftUI

// UI Examples
struct ClearTextField: View {
    @State private var s: String = "ClearTextField"
    @State private var d: Double = 11.5
    var body: some View {
        VStack {
            Group {
                TextField("String", text: $s)
                    .clearStringButton($s)
                ClearNumberTextField(value: $d)
                    .multilineTextAlignment(.trailing)
            }
            .background(.gray)
            .textFieldStyle(.roundedBorder)
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

