import SwiftUI

@main
struct ConciousConsumerApp: App {
    @State private var currentView: String? = "Login" // Start with Login view
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView(currentView: $currentView)
            }
        }
    }
}


struct ContentView: View {
    @Binding var currentView: String?

    var body: some View {
        VStack {
            if currentView == "Login" {
                LoginView {
                    currentView = "Home"
                }
            } else if currentView == "Account" {
                AccountView(currentView: $currentView)
            } else if currentView == "Favorites" {
                FavoriteBrandsView(currentView: $currentView)
            } else if currentView == "Line" {
                FilterView(currentView: $currentView)
            } else if currentView == "Settings" {
                SettingsView(currentView: $currentView)
            } else {
                FeaturedBrandsView(currentView: $currentView)
            }
        }
    }
}
