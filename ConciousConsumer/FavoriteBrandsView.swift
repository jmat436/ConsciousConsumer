import SwiftUI

struct FavoriteBrandsView: View {
    @Binding var currentView: String?
    let favoriteBrands = Brand.sampleData // Using the sample data

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

                    Spacer()

                    VStack {
                        Text("Favorite Brands")
                            .font(.title)
                            .bold()
                            .padding()

                        ScrollView {
                            VStack {
                                ForEach(favoriteBrands.filter { $0.isFavorited }) { brand in
                                    BrandView(brand: brand)
                                        .padding(.horizontal)
                                        .padding(.vertical, 5)
                                }
                            }
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
