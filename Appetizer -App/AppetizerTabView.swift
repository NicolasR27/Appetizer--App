
import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem{
                    Image(systemName:"house.circle.fill")
                    Text("Home")
                    
                }
            AccountView()
                .tabItem{
                    Image(systemName:"person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem{
                    Image(systemName:"bag")
                    Text("Order")
                    
                }
            
        }
        .accentColor(Color("brandPrimary"))
        
    }
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
        
    }
}
