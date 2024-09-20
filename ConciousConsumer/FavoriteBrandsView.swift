import SwiftUI

struct FavoriteBrandsView: View {
    
    let favoriteBrands = Brand.sampleData // Using the sample data

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
                    
                    Spacer()
                    
                    VStack {
                        Text("Favorite Brands")
                            .font(.title)
                            .bold()
                            .padding()
                        
                        ScrollView {
                            VStack {
                                ForEach(favoriteBrands) { brand in
                                    BrandView(brand: brand) // Use BrandView for each brand
                                        .padding(.horizontal)
                                        .padding(.vertical, 5)
                                }
                            }
                        }
                    }
                    
                    ConsciousConsumerFooterView()
                        .frame(width: geometry.size.width) // Ensure full width
                        .background(Color(.systemBackground)) // Match background color
                        .clipped() // Ensure clipping to prevent any overflow
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct FavoriteBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBrandsView()
    }
}

