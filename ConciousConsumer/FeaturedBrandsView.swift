import SwiftUI

struct FeaturedBrandsView: View {
    @Binding var currentView: String?
    @State var allBrands = Brand.sampleData
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    RoundedRectangle(cornerRadius: 16.0)
                        .fill(Color(.systemBackground))
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    
                    Circle()
                        .fill(Color("LightYellow"))
                        .frame(width: 300, height: 300)
                        .offset(x: -200, y: -140)
                    
                    Circle()
                        .fill(Color("LightYellow"))
                        .frame(width: 300, height: 300)
                        .offset(x: 200, y: 180)

                    VStack(spacing: 0) {
                        ConsciousConsumerHeaderView(onPersonTap: {
                            currentView = "Account"
                        })
                        .frame(width: geometry.size.width)
                        .background(Color("LightYellow"))
                        .padding(.top)
                        .clipped()

                        Spacer()

                        VStack {
                            Text("Featured")
                                .font(.title)
                                .bold()
                                .padding()

                            ScrollView {
                                VStack {
                                    // Iterate over the indices of allBrands
                                    ForEach(allBrands.indices, id: \.self) { index in
                                        // Use the index to access the brand as a binding
                                        NavigationLink(destination: BrandDetailView(brand: allBrands[index])) {
                                            // Pass the binding of brand using $allBrands[index]
                                            BrandView(brand: allBrands[index])
                                                .padding(.horizontal)
                                                .padding(.vertical, 5)
                                        }
                                    }
                                }
                            }
                        }

                        Spacer()

                        ConsciousConsumerFooterView(
                            onHomeTap: { currentView = nil },
                            onLineTap: { currentView = "Line" },
                            onCameraTap: { currentView = "Camera" }, 
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

struct FeaturedBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedBrandsView(currentView: .constant(nil))
    }
}
