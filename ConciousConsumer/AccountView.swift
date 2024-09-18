import SwiftUI

struct AccountView: View {
    @State private var username: String = "Emma_G"
    @State private var password: String = ""
    @State private var emailAddress: String = ""
    @State private var address: String = ""
    @State private var random: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 16.0)
                        .fill(Color(.systemBackground))
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    
                    VStack(spacing: 0) { // Remove spacing to ensure no extra space
                        ConsciousConsumerHeaderView()
                            .frame(width: geometry.size.width) // Ensure full width
                            .background(Color("LightYellow")) // Match background color
                            .padding(.top, 55)
                        
                        Spacer()
                        
                        VStack {
                            Text("Account")
                                .font(.title)
                                .bold()
                            
                            HStack {
                                Image("PersonaOne")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .padding([.top, .leading])
                                
                                VStack {
                                    Text("Username")
                                        .bold()
                                        .padding()
                                    Text("\(username)")
                                }
                            }
                            VStack {
                                Form {
                                    Section(header: Text("Password").font(.title3)) {
                                        CustomSecureField(text: $password, placeholder: "Password", customColor: Color("WarmYellow"))
                                    }
                                    .listRowBackground(Color(.systemBackground))
                                    
                                    Section(header: Text("Email Address").font(.title3)) {
                                        CustomSecureField(text: $emailAddress, placeholder: "Email Address", customColor: Color("WarmYellow"))
                                    }
                                    .listRowBackground(Color(.systemBackground))
                                    
                                    Section(header: Text("Address").font(.title3)) {
                                        CustomSecureField(text: $address, placeholder: "Address", customColor: Color("WarmYellow"))
                                    }
                                    .listRowBackground(Color(.systemBackground))
                                }
                                .scrollContentBackground(.hidden)
                            }
                        }
                        Spacer()
                        
                        ConsciousConsumerFooterView()
                            .frame(width: geometry.size.width) // Ensure full width
                            .background(Color(.systemBackground)) // Match background color
                            .clipped() // Ensure clipping to prevent any overflow
                    }
                    .padding(0) // Remove padding to ensure no extra space
                }
                .edgesIgnoringSafeArea(.all) // Ensure background covers the entire screen
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
