import SwiftUI

struct CameraView: View {
    @Binding var currentView: String?

    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                VStack(spacing: 0) {
                    // Header
                    ConsciousConsumerHeaderView(onPersonTap: {
                        currentView = "Account"
                    })
                    .frame(width: geometry.size.width)
                    .background(Color("LightYellow"))
                    .padding(.top)
                    .clipped()
                   
                    ScrollView {
                        VStack(spacing: 20) {
                            // Main content
                            Text ("Barcode Scanner")
                                .font(.title)
                            
                            Text("Submitted image: ")
                                .font(.title3)
                                .multilineTextAlignment(.leading)
                                .bold()
                                .padding()

                            Image(systemName: "barcode.viewfinder")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 100)

                            Text("Scanned from barcode")
                                .font(.caption)
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .padding()

                            Text("Matches this product: ")
                                .font(.title3)
                                .multilineTextAlignment(.leading)
                                .bold()
                                .padding()

                            // Products Section
                            VStack(spacing: 16) {
                                // H&M Product
                                HStack {
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Brand: H&M")
                                            .font(.title2)
                                        Link(destination: URL(string: "https://www2.hm.com/nl_nl/productpage.0608945008.html")!) {
                                            Image("hm-shirt")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 250, height: 250)
                                        }

                                        HStack {
                                            Text("Rating: ")
                                            Image(systemName: "minus.circle")
                                        }
                                    }
                                    .padding()
                                    .background(Color("WarmYellow"))   .cornerRadius(15)
                                        .shadow(radius: 5)
                                }

                                // Levi's Product
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Brand: Levi's")
                                        .font(.title2)

                                    Link(destination: URL(string: "https://www.levi.com/NL/nl_NL/kleding/heren/slim-fit-t-shirt-ronde-hals-set-van2/p/795410001")!) {
                                        Image("levis-shirt")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 250, height: 250)
                                    }

                                    HStack {
                                        Text("Rating: ")
                                        Image(systemName: "smiley")
                                    }
                                }
                                .padding()
                                .background(Color("WarmYellow"))   .cornerRadius(15)
                                    .shadow(radius: 5)

                                // Primark Product
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Brand: Primark")
                                        .font(.title2)

                                    Link(destination: URL(string: "https://www.primark.com/en-us/p/kem-t-shirt-black-991095666804")!) {
                                        Image("primark-shirt")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 250, height: 250)
                                    }

                                    HStack {
                                        Text("Rating: ")
                                        Image(systemName: "minus.circle")
                                    }
                                }
                                .padding()
                                .background(Color("WarmYellow"))   .cornerRadius(15)
                                    .shadow(radius: 5)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(.systemBackground))
                    
                    ConsciousConsumerFooterView(
                        onHomeTap: { currentView = "Featured" },
                        onLineTap: { currentView = "Line" },
                        onCameraTap: { currentView = nil },
                        onHeartTap: { currentView = "Favorites" },
                        onGearTap: { currentView = "Settings" }
                    )
                    .frame(width: geometry.size.width)
                    .background(Color(.systemBackground))
                    .clipped()
                }
            }
            .edgesIgnoringSafeArea(.all) // Keeps footer and other content well aligned
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(currentView: .constant(nil))
    }
}
