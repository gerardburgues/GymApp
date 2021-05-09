//
//  ContentView.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 31/3/21.
//

import SwiftUI


import AVKit
struct ContentView : View {
    var body: some View {
        NavigationView {
            
            VStack {
                
              Spacer()
                Text("PERSONAL FITNESS APP")
                          .font(.largeTitle)
                          .fontWeight(.bold)
                              .multilineTextAlignment(.center)
          
                    
                
                                .padding()
                NavigationLink(destination: LevelsView()){
                           Text("START")
                               .bold()
                               .font(.title)
                               .padding(.all)
                            .foregroundColor(.black)
                }
              
                NavigationLink(destination:ExercisesListView()) {
                    Text("List of Exercises")
                        .fontWeight(.bold)
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .clipShape(Rectangle())
                }
            
                Spacer()
            }.background(Image("image"))
            .scaledToFill()
            //.clipped()
            .edgesIgnoringSafeArea([.top])
            
        

            // A UIImageView with async loading
         
               

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
