import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("AppLogo")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 405, height: 325)
                
                Spacer()
                
                Button(action: {
                            // Action when button is tapped
                            print("Button tapped!")
                        }) {
                            Text("Sign Up")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding() // Padding for the text inside the button
                                .frame(width: 350, height: 150) // Fixed size for the button
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color("WarmOrange")) // Fill color for the button background
                                )
                        }
                         .padding()
                
                Spacer()
                
                Button(action: {
                            // Action when button is tapped
                            print("Button tapped!")
                        }) {
                            Text("Log In")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding() // Padding for the text inside the button
                                .frame(width: 350, height: 150) // Fixed size for the button
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color("WarmYellow")) // Fill color for the button background
                                )
                        }
                        .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
