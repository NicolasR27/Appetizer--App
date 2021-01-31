
import SwiftUI


struct AlertItem:Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
    
    
}



struct AlertContext {
    static let invalidData    = AlertItem(title:Text ("Server Error"),
                                          message: Text( "The data recieved from server was invalid please contact support."),
                                          dismissButton: .default(Text("ok")))
    
    
    static let invalidResponse  = AlertItem(title:Text ("Server Error"),
                                            message: Text( "Invalid response from server .please try again later or contact support."),
                                            dismissButton:.default(Text("ok")))
    
    
    static let invalidURL       = AlertItem(title:Text ("Server Error"),
                                            message: Text( "There was a issue connecting to the server. If this persist. please contact support"),
                                            dismissButton:.default(Text("ok")))
    
    static let unableToComplete = AlertItem(title:Text ("Server Error"),
                                            message: Text( "Unable to complete your request at this time please check your internet Connection"),
                                            dismissButton:.default(Text("ok")))
    
    
    
}
