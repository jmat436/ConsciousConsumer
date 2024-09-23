import SwiftUI

struct ConsciousConsumerFooterView: View {
    // Define closures for each button's action
    var onHomeTap: () -> Void
    var onLineTap: () -> Void
    var onHeartTap: () -> Void
    var onGearTap: () -> Void
    
    var body: some View {
        VStack {
            Divider()
                .background(Color.black)
                .frame(height: 3)
                .padding(.bottom, 5)
            
            HStack {
                // House button
                Button(action: onHomeTap) {
                    Image(systemName: "house")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.leading)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                // Line button
                Button(action: onLineTap) {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                // Heart button
                Button(action: onHeartTap) {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                // Gear button
                Button(action: onGearTap) {
                    Image(systemName: "gear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black)
                        .padding(.trailing)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 20)
    }
}


struct ConsciousConsumerFooterView_Previews: PreviewProvider {
    static var previews: some View {
        ConsciousConsumerFooterView(
            onHomeTap: {
                print("Home tapped in preview")
            },
            onLineTap: {
                print("Line tapped in preview")
            },
            onHeartTap: {
                print("Heart tapped in preview")
            },
            onGearTap: {
                print("Gear tapped in preview")
            }
        )
    }
}
