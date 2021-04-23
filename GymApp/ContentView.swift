//
//  ContentView.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 31/3/21.
//

import SwiftUI

//struct ContentView: View {
//    
//    var body: some View {
//        VStack(alignment: .center){
//            Text("PERSONAL FITNESS APP")
//            .font(.largeTitle)
//            .fontWeight(.bold)
//                .multilineTextAlignment(.center)
//           
//                .padding()
//            
//        
//            
//            Text("START")
//                .bold()
//                .font(.title)
//                .padding(.all)
//            Text("List of Exercises")
//                .bold()
//                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//            
//            
//        }
//        .frame(width: nil, height: 600.0)
//        NavigationLink(destination: SecondView()) {
//                           Text("Awesome Button")
//                           .frame(minWidth: 0, maxWidth: 300)
//                           .padding()
//                           .foregroundColor(.white)
//                           .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                           .cornerRadius(40)
//                           .font(.title)
//                   }
//    }
//}

struct ContentView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("PERSONAL FITNESS APP")
                          .font(.largeTitle)
                          .fontWeight(.bold)
                              .multilineTextAlignment(.center)
                
                                .padding()
                
                           Text("START")
                               .bold()
                               .font(.title)
                               .padding(.all)
                         
              
                NavigationLink(destination: ExercisesListView()) {
                    Text("List of Exercises")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
            }
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
