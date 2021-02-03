

import SwiftUI

struct AppetizerDetailView: View {
   
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 320, height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Text(appetizer.name)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: appetizer.carbs)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.carbs)
                }
                
            }
            Spacer()
            
            Button {
                print("tapped")
            } label:{
                APButton(title: "$\(appetizer.price, specifier: "%.2f") -Add to Order")
                
            }
            .padding(.bottom,30)
        }
        
        .frame(width: 330, height: 525)
        .background(Color(.systemBackground))
        cornerRadius(12)
            .shadow(radius: 40)
            .overlay(Button {
                isShowingDetail = false
            } label: {
                XDimissButton()
            },alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                            isShowingDetail: .constant(true))
    }
}


struct NutritionInfo: View {
    
    let title :String
    let value:Int
    
    var body: some View{
        VStack(spacing:5){
            Text("Calories")
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .italic()
        }
    }
}
