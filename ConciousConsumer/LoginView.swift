import SwiftUI

struct LoginView: View {
    var onLoginTap: () -> Void
    
    var body: some View {
        ZStack {
            VStack {
                Image("NewLogo2")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 380, height: 300)

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
                                .fill(Color("DarkGreen"))
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
                                .fill(Color("LightGreen"))
                        )
                }
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(onLoginTap: {})
    }
}
