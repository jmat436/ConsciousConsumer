import SwiftUI

struct BrandView: View {
    @ObservedObject var brand: Brand // Use @ObservedObject to observe changes
    
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
                .onTapGesture {
                    // Toggle favorite status
                    brand.isFavorited.toggle()
                }
        }
        .padding()
        .background(Color("WarmYellow")) // Custom color
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}
