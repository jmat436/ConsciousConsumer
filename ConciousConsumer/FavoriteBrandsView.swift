import SwiftUI

struct FavoriteBrandsView: View {
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
                    
                    
                }
            }
        }
    }
}

struct FavoriteBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBrandsView()
    }
}
