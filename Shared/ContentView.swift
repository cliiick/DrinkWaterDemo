//
//  ContentView.swift
//  Shared
//
//  Created by dongshihua on 2021/7/9.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    
    var body: some View {
        VStack {
            ZStack {
                Image("drinkImg")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image(systemName: isWatered ? "crown.fill" : "eyes.inverse")
                    .foregroundColor(isWatered ? .yellow : .white)
                    .font(.system(size: 128))
            }
            .frame(minHeight:640)
            .shadow(color: .blue.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 4, y: 0.0)
            
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("今天你喝水了吗？", systemImage: "drop.fill")
            }.foregroundColor(.blue)
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// complex function

// important project. saved on Github.
