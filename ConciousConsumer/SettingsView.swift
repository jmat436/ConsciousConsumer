import SwiftUI

struct SettingsView: View {
    @State private var showFollowedBrandsNotifications = false
    @State private var showDarkMode = false
    @State private var showImportantUpdates = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 16.0)
                    .fill(Color(.systemBackground))
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                VStack(spacing: 0) { // Remove spacing to ensure no extra space
                    ConsciousConsumerHeaderView()
                        .frame(width: geometry.size.width) // Ensure full width
                        .background(Color("LightYellow")) // Match background color
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
                                
                                Button( action: {
                                    // button action TO BE IMPLEMENTED
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
                                    .padding(.bottom, 8) // Add padding to match other sections
                                
                                VStack(spacing: 16) { // Add spacing between the buttons
                                    Button( action: {
                                        // button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Change Password")
                                            .font(.headline)
                                            .padding(.trailing, 227)
                                    }
                                    
                                    Button( action: {
                                        // button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Change Profile Picture")
                                            .font(.headline)
                                            .padding(.trailing, 192)
                                    }
                                    
                                    Button( action: {
                                        // button action TO BE IMPLEMENTED
                                    }) {
                                        Text("Change Username")
                                            .font(.headline)
                                            .padding(.trailing, 223)
                                    }
                                    
                                    Button( action: {
                                        // button action TO BE IMPLEMENTED
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
                    
                    ConsciousConsumerFooterView()
                        .frame(width: geometry.size.width) // Ensure full width
                        .background(Color(.systemBackground)) // Match background color
                        .clipped() // Ensure clipping to prevent any overflow
                }
                .padding(.trailing)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
