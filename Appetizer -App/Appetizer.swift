

import Foundation

struct Appetizer: Decodable,Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


struct AppetizerResponse {
    let request:[Appetizer]
}
    struct MockData{
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "pizza",
                                           description: "good",
                                           price: 19.0, imageURL: "asian-flank-steak",
                                           calories: 9,
                                           protein: 9,
                                           carbs: 1)


static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer]
    }
