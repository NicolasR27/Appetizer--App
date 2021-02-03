

import SwiftUI

struct XDimissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
            foregroundColor(.black)
                .frame(width: 44, height: 44)
        }
        
    }
}

struct XDimissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDimissButton()
    }
}
