import Foundation

class Brand: Identifiable {
    let id = UUID() // Unique identifier
    var name: String
    var infoSnippet: String
    var imageName: String // Non-optional image name
    var isFavorited: Bool
    
    init(name: String, infoSnippet: String, imageName: String, isFavorited: Bool) {
        self.name = name
        self.infoSnippet = infoSnippet
        self.imageName = imageName
        self.isFavorited = isFavorited
    }
    
    // Sample data
    static let sampleData: [Brand] = [
        Brand(name: "Vinted", infoSnippet: "Join the community of over 65 million members.", imageName: "VintedBrandImage", isFavorited: true),
        Brand(name: "Tony's Chocolonely", infoSnippet: "Making chocolate 100% slave-free.", imageName: "TonysBrandImage", isFavorited: true)
    ]
}
