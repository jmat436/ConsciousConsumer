import SwiftUI

struct FilterView: View {
    @Binding var currentView: String?

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 16.0)
                    .fill(Color(.systemBackground))
                    .frame(width: geometry.size.width, height: geometry.size.height)

                VStack(spacing: 0) {
                    ConsciousConsumerHeaderView(onPersonTap: {
                        currentView = "Account"
                    })
                        .frame(width: geometry.size.width)
                        .background(Color("LightYellow"))
                        .padding(.top, 55)
                        .clipped()

                    VStack {
                        Form {
                            Text("Filter")
                                .font(.title)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .listRowSeparator(.hidden)

                            VStack(spacing: 16) {
                                Image("HomeFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .listRowSeparator(.hidden)

                                Image("BeautyFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .listRowSeparator(.hidden)

                                Image("ClothingFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .listRowSeparator(.hidden)

                                Image("FoodFilterBanner")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .listRowSeparator(.hidden)
                            }
                            .frame(maxHeight: .infinity, alignment: .center)
                        }
                        .scrollContentBackground(.hidden)
                    }

                    Spacer()

                    ConsciousConsumerFooterView(
                        onHomeTap: { currentView = nil }, // Go to Featured
                        onLineTap: { currentView = "Line" },
                        onHeartTap: { currentView = "Favorites" },
                        onGearTap: { currentView = "Settings" }
                    )
                    .frame(width: geometry.size.width)
                    .background(Color(.systemBackground))
                    .clipped()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(currentView: .constant(nil)) // Provide a binding
    }
}
