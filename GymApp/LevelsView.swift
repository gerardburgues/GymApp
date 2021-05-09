//
//  Levels2View.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 28/4/21.
//

import SwiftUI

struct LevelsView: View {
    var body: some View {
        NavigationView{
            
            VStack{
            Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("How hard you wanna work out")
                    .font(.title)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                   
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .frame(minWidth: 0, maxWidth: 400,minHeight: 100)
                    .background(Color.blue)
                    .cornerRadius(22)
                    .font(.title)
                   
        Spacer()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               NavigationLink(
                destination: TimeViewEASY()){
                
                    Text("EASY LEVEL")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                       
                        .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .font(.title)
            }
              Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                NavigationLink(
                 destination: TimeViewMedium()){
            Text("MEDIUM LEVEL")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
                .background(Color.gray)
                .cornerRadius(10)
                .font(.title)}
    Spacer()
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                NavigationLink(
                    
                 destination: TimeViewHard()){
            Text("HARD LEVEL")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
                .background(Color.gray)
                .cornerRadius(10)
                .font(.title)
                
            }
                
 
 
         
                
            }.padding(.bottom,200.0)
           
            .background(Image("image"))
            .scaledToFill()
            
            .edgesIgnoringSafeArea([.top])
         
            
        }
   
//        VStack{
//            VStack(alignment: .leading, spacing: 2)
//            {
//                Text("How hard you wanna work")
//                    .font(.system(.largeTitle, design: .rounded))
//                    .fontWeight(.black)
//                    .foregroundColor(.black)
//                    .frame(minWidth: 0, maxWidth: 400,minHeight: 100)
//                    .background(Color.blue)
//                    .multilineTextAlignment(.center)
//
//
//
//            }
//            Spacer()
//
//            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
//
//                NavigationLink(
//                    destination: TimeView()){
//
//                    Text("EASY LEVEL")
//                        .font(.title)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(.white)
//
//                        .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
//                        .background(Color.gray)
//                        .cornerRadius(10)
//                        .font(.title)
//                }
//                Spacer()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                NavigationLink(
//                    destination: TimeView()){
//                    Text("MEDIUM LEVEL")
//                        .font(.title)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(.white)
//                        .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
//                        .background(Color.gray)
//                        .cornerRadius(10)
//                        .font(.title)}
//                Spacer()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                NavigationLink(
//
//                    destination: TimeView()){
//                    Text("HARD LEVEL")
//                        .font(.title)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(.white)
//                        .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
//                        .background(Color.gray)
//                        .cornerRadius(10)
//                        .font(.title)
//
//                }
//            }
//
//        }.padding()
    }
    
}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        Levels2View()
    }
}
//Text("How hard you wanna work out")
//    .font(.title)
//    .fontWeight(.black)
//    .multilineTextAlignment(.center)
//
//    .foregroundColor(.white)
//    .cornerRadius(10)
//    .frame(minWidth: 0, maxWidth: 400,minHeight: 100)
//    .background(Color.blue)
//    .cornerRadius(22)
//    .font(.title)
//
//
//}
