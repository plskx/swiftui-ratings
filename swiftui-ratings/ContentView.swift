//  Date: 10/23/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI
import StoreKit

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    @State private var count = 1
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 200, weight: .heavy, design: .rounded))
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                count += 1
                
                if count == 5 {
                    requestReview()
                }
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.pink)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
