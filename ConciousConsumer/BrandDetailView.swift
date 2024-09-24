import SwiftUI

struct BrandDetailView: View {
    let brand: Brand
    
    var body: some View {
        VStack {
            Image(brand.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(15)
                .padding()

            Text(brand.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            Text(brand.infoSnippet)
                .font(.body)
                .padding()

            Spacer()
        }
        .navigationTitle(brand.name)
        .padding()
    }
}

struct BrandDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleBrand = Brand(
            name: "Sample Brand",
            infoSnippet: "This is a sample brand description.",
            imageName: "TemuBrandImage", // Make sure to have an image named "sample_image" in your assets
            isFavorited: true
        )
        BrandDetailView(brand: sampleBrand)
            .previewLayout(.sizeThatFits) // Optional: fits the preview to the content size
            .padding()
    }
}
