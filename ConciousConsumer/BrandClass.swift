import Foundation
import SwiftUI

class Brand: Identifiable, ObservableObject {
    let id = UUID() // Unique identifier
    var name: String
    var infoSnippet: String
    var imageName: String // Non-optional image name
    @Published var isFavorited: Bool // Mark as @Published so changes are observed

    init(name: String, infoSnippet: String, imageName: String, isFavorited: Bool) {
        self.name = name
        self.infoSnippet = infoSnippet
        self.imageName = imageName
        self.isFavorited = isFavorited
    }

    // Sample data
    static let sampleData: [Brand] = [
        Brand(name: "Vinted", infoSnippet: "Join the community of over 65 million members.", imageName: "VintedBrandImage", isFavorited: false),
        Brand(name: "Tony's Chocolonely", infoSnippet: "Making chocolate 100% slave-free.", imageName: "TonysBrandImage", isFavorited: false),
        Brand(name: "Temu", infoSnippet: "Online retailer", imageName: "TemuBrandImage", isFavorited: false),
        Brand(name: "Shein", infoSnippet: "Online clothing retailer", imageName: "SheinBrandImage", isFavorited: false)
    ]
}
