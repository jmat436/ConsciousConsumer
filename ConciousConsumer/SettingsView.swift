import SwiftUI

struct SettingsView: View {
    @State private var showFollowedBrandsNotifications = false
    @State private var showDarkMode = false // Dark Mode toggle state
    @State private var showImportantUpdates = false
    @Binding var currentView: String?

    var body: some View {
        GeometryReader { geometry in
        ZStack {
            // Set the background color based on the current color scheme
            (showDarkMode ? Color.black : Color.white)
                .edgesIgnoringSafeArea(.all)

                VStack(spacing: 0) {
                    // Header View
                    ConsciousConsumerHeaderView(onPersonTap: {
                        currentView = "Account"
                    })
                    .frame(width: geometry.size.width)
                    .background(Color("LightYellow"))
                    .padding(.top) // Ensure the header is at the top
                    .clipped()

                    // Main content
                    VStack(alignment: .leading) {
                        Text("Settings")
                            .font(.title)
                            .bold()
                            .padding(.bottom)

                        // Preferences Section
                        Text("Preferences")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 8)

                        // Dark Mode Toggle
                        Toggle("Dark Mode", isOn: $showDarkMode)
                            .padding(.bottom)

                        Button(action: {
                            // Button action TO BE IMPLEMENTED
                        }) {
                            Text("Reset Settings")
                                .font(.headline)
                                .foregroundColor(.red)
                        }
                        .padding(.bottom)

                        // Notifications Section
                        Text("Notifications")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 8)

                        Toggle("Brands You Follow", isOn: $showFollowedBrandsNotifications)
                            .padding(.bottom)
                        Toggle("Important Updates", isOn: $showImportantUpdates)
                            .padding(.bottom)

                        // Account Section
                        Text("Account")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 8)

                        VStack(alignment: .leading, spacing: 16) {
                            Button(action: {
                                // Button action TO BE IMPLEMENTED
                            }) {
                                Text("Change Password")
                                    .font(.headline)
                            }

                            Button(action: {
                                // Button action TO BE IMPLEMENTED
                            }) {
                                Text("Change Profile Picture")
                                    .font(.headline)
                            }

                            Button(action: {
                                // Button action TO BE IMPLEMENTED
                            }) {
                                Text("Change Username")
                                    .font(.headline)
                            }

                            Button(action: {
                                // Button action TO BE IMPLEMENTED
                            }) {
                                Text("Log Out")
                                    .font(.headline)
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading) // Align content to the left

                    Spacer()

                    ConsciousConsumerFooterView(
                        onHomeTap: { currentView = nil }, // Go to Featured
                        onLineTap: { currentView = "Line" },
                        onCameraTap: { currentView = "Camera" },
                        onHeartTap: { currentView = "Favorites" },
                        onGearTap: { currentView = "Settings" }
                    )
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemBackground))
                    .clipped()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .preferredColorScheme(showDarkMode ? .dark : .light) // Apply the color scheme based on the toggle
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(currentView: .constant(nil)) // Provide a binding
    }
}
