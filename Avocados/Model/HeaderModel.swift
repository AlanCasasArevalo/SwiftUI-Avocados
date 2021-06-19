import Foundation

struct HeaderModel: Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}