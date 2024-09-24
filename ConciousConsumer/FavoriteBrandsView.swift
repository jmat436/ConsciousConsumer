import SwiftUI

struct FavoriteBrandsView: View {
    @Binding var currentView: String?
    @State var favoriteBrands = Brand.sampleData

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    RoundedRectangle(cornerRadius: 16.0)
                        .fill(Color(.systemBackground))
                        .frame(width: geometry.size.width, height: geometry.size.height)

                    VStack(spacing: 0) {
                        // Header
                        ConsciousConsumerHeaderView(onPersonTap: {
                            currentView = "Account"
                        })
                        .frame(width: geometry.size.width)
                        .background(Color("LightYellow"))
                        .padding(.top, 55)

                        Spacer()

                        // Main content for favorite brands
                        VStack {
                            Text("Favorite Brands")
                                .font(.title)
                                .bold()
                                .padding()

                            ScrollView {
                                VStack {
                                    // Filter to only show favorited brands
                                    ForEach(favoriteBrands.filter { $0.isFavorited }) { brand in
                                        NavigationLink(destination: BrandDetailView(brand: brand)) {
                                            BrandView(brand: brand) // No need for $ as this isn't a binding
                                                .padding(.horizontal)
                                                .padding(.vertical, 5)
                                        }
                                    }
                                }
                            }
                        }

                        Spacer() // Move Spacer inside the VStack to push footer down

                        // Footer
                        ConsciousConsumerFooterView(
                            onHomeTap: { currentView = nil },
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
}

struct FavoriteBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBrandsView(currentView: .constant(nil))
    }
}
