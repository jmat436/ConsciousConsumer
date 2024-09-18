import SwiftUI

struct ConsciousConsumerFooterView: View {
    var body: some View {
        VStack {
            // Add a black line (divider) just above the symbols
            Divider()
                .background(Color.black)
                .frame(height: 3)
                .padding(.bottom, 5) // Adjust spacing between line and symbols
            
            HStack {
                // House icon pushed to the far left
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                
                Spacer() // Spacer between the house and the next icon
                
                // Line icon
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Spacer() // Spacer between the two middle icons
                
                // Heart icon
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Spacer() // Spacer between the heart and the gear icon
                
                // Gear icon pushed to the far right
                Image(systemName: "gear")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.trailing)
            }
            .frame(maxWidth: .infinity) // Make the HStack fill the available width
            .padding(.vertical, 10) // Add some padding around the symbols vertically
        }
        .frame(maxWidth: .infinity) // Make the whole footer fill the available width
        .padding(.bottom, 20) // Add extra padding to make the background larger
    }
}

struct ConsciousConsumerFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ConsciousConsumerFooterView()
    }
}





/*import SwiftUI

struct ConciousConsumerFooterView: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color("LightYellow"))
    }
}


struct ConciousConsumerFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ConciousConsumerFooterView()
    }
}
*/
