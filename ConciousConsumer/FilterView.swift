import SwiftUI

struct FilterView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 16.0)
                    .fill(Color(.systemBackground))
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                VStack(spacing: 0) {
                    ConsciousConsumerHeaderView()
                        .frame(width: geometry.size.width) // Ensure full width
                        .background(Color("LightYellow")) // Match background color
                        .padding(.top, 55)
                        .clipped()
                    
                    VStack {
                        Form {
                            // Center "Filter" text inside the form
                            Text("Filter")
                                .font(.title)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center) // Center the text
                                .listRowSeparator(.hidden) // Hide the separator below the text
                            
                            VStack(spacing: 16) { // Add vertical spacing between images
                                Image("HomeFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center) // Center the image
                                    .listRowSeparator(.hidden)
                                
                                Image("BeautyFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center) // Center the image
                                    .listRowSeparator(.hidden)
                                
                                Image("ClothingFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center) // Center the image
                                    .listRowSeparator(.hidden)
                                
                                Image("FoodFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center) // Center the image
                                    .listRowSeparator(.hidden)
                            }
                            .frame(maxHeight: .infinity, alignment: .center) // Center images vertically
                        }
                        .scrollContentBackground(.hidden)
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

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
