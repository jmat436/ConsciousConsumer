import SwiftUI

struct SettingsView: View {
    @State private var showFollowedBrandsNotifications = false
    @State private var showDarkMode = false
    @State private var showImportantUpdates = false
    @Binding var currentView: String?

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 16.0)
                    .fill(Color(.systemBackground))
                    .frame(width: geometry.size.width, height: geometry.size.height)

                VStack(spacing: 0) {
                    ConsciousConsumerHeaderView(onPersonTap: {
                        currentView = "Account"
                    })
                        .frame(width: geometry.size.width)
                        .background(Color("LightYellow"))
                        .padding(.top, 55)
                        .clipped()

                    Spacer()

                    VStack {
                        Text("Settings")
                            .font(.title)
                            .bold()
                            .padding()

                        HStack {
                            VStack {
                                Text("Preferences")
                                    .font(.title2)
                                    .bold()
                                    .padding(.trailing, 245)

                                Toggle("Dark Mode", isOn: $showDarkMode)
                                    .padding(.trailing)

                                Button(action: {
                                    // Button action TO BE IMPLEMENTED
                                }) {
                                    Text("Reset Settings")
                                        .font(.headline)
                                        .foregroundStyle(.red)
                                        .padding(.trailing, 254)
                                }

                                Spacer()

                                Text("Notifications")
                                    .font(.title2)
                                    .bold()
                                    .padding(.trailing, 238)

                                Toggle("Brands You Follow", isOn: $showFollowedBrandsNotifications)
                                    .padding(.trailing)
                                Toggle("Important Updates", isOn: $showImportantUpdates)
                                    .padding(.trailing)

                                Spacer()

                                Text("Account")
                                    .font(.title2)
                                    .bold()
                                    .padding(.trailing, 283)
                                    .padding(.bottom, 8)

                                VStack(spacing: 16) {
                                    Button(action: {
                                        // Button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Change Password")
                                            .font(.headline)
                                            .padding(.trailing, 227)
                                    }

                                    Button(action: {
                                        // Button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Change Profile Picture")
                                            .font(.headline)
                                            .padding(.trailing, 192)
                                    }

                                    Button(action: {
                                        // Button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Change Username")
                                            .font(.headline)
                                            .padding(.trailing, 223)
                                    }

                                    Button(action: {
                                        // Button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Log Out")
                                            .font(.headline)
                                            .padding(.trailing, 307)
                                            .foregroundStyle(.red)
                                    }
                                }
                            }
                            .padding()
                        }
                    }

                    Spacer()

                    ConsciousConsumerFooterView(
                        onHomeTap: { currentView = nil }, // Go to Featured
                        onLineTap: { currentView = "Line" },
                        onHeartTap: { currentView = "Favorites" },
                        onGearTap: { currentView = "Settings" }
                    )
                    .frame(width: geometry.size.width)
                    .background(Color(.systemBackground))
                    .clipped()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(currentView: .constant(nil)) // Provide a binding
    }
}
