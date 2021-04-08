//
//  ContentView.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 31/3/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .center){
            Text("PERSONAL FITNESS APP")
            .font(.largeTitle)
            .fontWeight(.bold)
                .multilineTextAlignment(.center)
           
                .padding()
            
        
            
            Text("START")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.all)
            Text("List of Exercises")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
    
    
        }
        .frame(width: nil, height: 600.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
