import SwiftUI

struct LoginView: View {
    var onLoginTap: () -> Void

    var body: some View {
        ZStack {
            VStack {
                Image("AppLogo")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 405, height: 325)

                Spacer()

                Button(action: {
                    // Action for Sign Up button
                }) {
                    Text("Sign Up")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 150)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color("WarmOrange"))
                        )
                }
                .padding()

                Spacer()

                Button(action: onLoginTap) {
                    Text("Log In")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 150)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color("WarmYellow"))
                        )
                }
                .padding()
            }
        }
    }
}
