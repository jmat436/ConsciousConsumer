import SwiftUI

struct AccountView: View {
    @State private var username: String = "Emma_G"
    @State private var password: String = "password"
    @State private var emailAddress: String = "testEmail@gmail.com"
    @State private var address: String = "123, city, country"
    @Binding var currentView: String?
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 16.0)
                        .fill(Color(.systemBackground))
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    
                    VStack(spacing: 0) {
                        ConsciousConsumerHeaderView(onPersonTap: {
                            currentView = "Account"
                        })
                        .frame(width: geometry.size.width)
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
                        
                        ConsciousConsumerFooterView(
                            onHomeTap: {
                                currentView = nil
                            },
                            onLineTap: {
                                currentView = "Line"
                            },
                            onHeartTap: {
                                currentView = "Favorites"
                            },
                            onGearTap: {
                                currentView = "Settings"
                            }
                        )
                            .frame(width: geometry.size.width)
                            .background(Color(.systemBackground))
                            .clipped()
                    }
                    .padding(0)
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    @State static var currentView: String? = nil
    
    static var previews: some View {
        AccountView(currentView: $currentView)
    }
}
