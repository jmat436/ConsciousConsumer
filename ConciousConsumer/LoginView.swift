import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("AppLogo")
                
                Button(action: {
                            // Action when button is tapped
                            print("Button tapped!")
                        }) {
                            Text("Log In")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding() // Padding for the text inside the button
                                .frame(width: 300, height: 100) // Fixed size for the button
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color("WarmOrange")) // Fill color for the button background
                                )
                        }
                        .padding()
                Button(action: {
                            // Action when button is tapped
                            print("Button tapped!")
                        }) {
                            Text("Sign Up")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding() // Padding for the text inside the button
                                .frame(width: 300, height: 100) // Fixed size for the button
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color("WarmYellow")) // Fill color for the button background
                                )
                        }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
