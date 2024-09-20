import SwiftUI

struct TestView: View {
    let favoriteBrands = Brand.sampleData // Using the sample data
    
    var body: some View {
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
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

