import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    var placeholder: String
    var customColor: Color
    @State private var isSecure: Bool = true // To toggle between showing and hiding the text
    
    var body: some View {
        ZStack(alignment: .trailing) {
            // Custom background color
            RoundedRectangle(cornerRadius: 8)
                .fill(customColor)
                .frame(height: 44) // Adjust height as needed
            
            HStack {
                if isSecure {
                    SecureField(placeholder, text: $text)
                        .foregroundColor(.black)
                        .padding(8) // Adjust padding as needed
                        .background(Color.clear) // Ensure no additional background color from SecureField
                } else {
                    TextField(placeholder, text: $text)
                        .foregroundColor(.black)
                        .padding(8) // Adjust padding as needed
                        .background(Color.clear) // Ensure no additional background color from TextField
                }
                
                Button(action: {
                    isSecure.toggle() // Toggle the visibility of the password
                }) {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                        .padding(.trailing, 8)
                }
            }
        }
        .padding(.horizontal, 8) // Adjust to ensure padding around the text field
    }
}
