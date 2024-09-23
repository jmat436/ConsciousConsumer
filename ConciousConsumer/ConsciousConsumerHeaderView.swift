import SwiftUI

struct ConsciousConsumerHeaderView: View {
    @State private var query: String = ""
    var onPersonTap: () -> Void // Closure for the button action
    
    var body: some View {
        VStack {
            HStack {
                // "Person" icon as a button
                Button(action: onPersonTap) {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 10)
                        .foregroundStyle(.black)
                }
                
                Spacer(minLength: 90)
                
                HStack {
                    // Magnifying glass on the far left
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding(.leading, 10)
                    
                    Spacer() // Spacer between the magnifying glass and the text field

                    // TextField aligned to the far right of the search box
                    TextField("Search...", text: $query)
                        .foregroundStyle(Color(.black))
                        .multilineTextAlignment(.trailing) // Align text to the right
                        .padding(10)
                }
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .frame(height: 40)
            }
            .padding(.horizontal)
            .frame(maxHeight: 57)
            
            // Add a black line (divider) below the content
            Divider()
                .background(Color.black)
                .frame(height: 3) // Increase the height to make it more pronounced
                .padding(.top, 0.5) // Adjust spacing between content and line
        }
        .background(Color("LightYellow")) // Use your custom color as the background
        .frame(maxWidth: .infinity) // Ensure the header view fills the available width
    }
}

struct ConsciousConsumerHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ConsciousConsumerHeaderView(onPersonTap: {})
    }
}
