//
//  ContentView.swift
//  SpinnerAnimation
//
//  Created by Martina Di Fuccia on 21/05/21.
//

import SwiftUI

struct ContentView: View {
    
//    Spinner rotation

    @State var spinnerRotation = 0
    
    var body: some View {
        
        Circle()
            .trim(from: 1/2, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color.yellow.opacity(0), Color.yellow]), startPoint: .leading, endPoint: .trailing),style: StrokeStyle(lineWidth: 2.5, lineCap: .round, lineJoin: .round))
            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.yellow)
            .rotationEffect(.degrees(Double(spinnerRotation)))
            .animation(Animation.linear(duration: 1.2).repeatForever(autoreverses: false))
            .onAppear() {
                 spinnerRotation = 360
            }
 
}
    
    struct ContntView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)

        }
    }
}
