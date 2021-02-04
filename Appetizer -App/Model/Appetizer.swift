

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


struct AppetizerRespose: Decodable{
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
    
        static let orderItemOne = Appetizer(id: 1,
                                               name: "Test appetizer one",
                                               description: "good",
                                               price: 19.0, imageURL: "asian-flank-steak",
                                               calories: 9,
                                               protein: 9,
                                               carbs: 1)
        
        
        static let orderItemTwo  = Appetizer(id: 1,
                                               name: "Test appetizer Two",
                                               description: "good",
                                               price: 19.0, imageURL: "asian-flank-steak",
                                               calories: 9,
                                               protein: 9,
                                               carbs: 1)

    
        
        
        static let orderItemThree = Appetizer(id: 1,
                                               name: "Test appetizer Three",
                                               description: "good",
                                               price: 19.0, imageURL: "asian-flank-steak",
                                               calories: 9,
                                               protein: 9,
                                               carbs: 1)

     static let orderItems = [orderItemOne,orderItemTwo,orderItemThree]

        
    }
