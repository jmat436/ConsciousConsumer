import SwiftUI

struct BrandView: View {
    let brand: Brand
    
    var body: some View {
        HStack {
            // Brand image on the left
            Image(brand.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(10)
                .padding(.leading, 10)
            
            // Brand name and snippet
            VStack(alignment: .leading) {
                Text(brand.name)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(brand.infoSnippet)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            // Favorite heart icon
            Image(systemName: brand.isFavorited ? "heart.fill" : "heart")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.red)
                .padding(.trailing, 10)
        }
        .padding()
        .background(Color("WarmYellow")) // Custom color
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        // Sample Brand data
        let sampleBrand = Brand(
            name: "Sample Brand",
            infoSnippet: "This is a sample brand description.",
            imageName: "TemuBrandImage", // Make sure to have an image named "sample_image" in your assets
            isFavorited: true
        )
        
        BrandView(brand: sampleBrand)
            .previewLayout(.sizeThatFits) // Optional: fits the preview to the content size
            .padding() // Optional: add padding for the preview
    }
}

