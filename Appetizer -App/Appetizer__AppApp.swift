

import SwiftUI

@main
struct Appetizer__AppApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
            
        }
    }
}
