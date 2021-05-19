//
//  TimeView.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 28/4/21.
//

import SwiftUI

struct TimeViewHard: View {
    var body: some View {
        VStack{
            Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("How long you wanna work out Hard")
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
            
            NavigationLink(destination: StartWorkout(level: "Hard", minutes: 20)){
            Text("20 MINUTES")
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
            
            NavigationLink(destination: StartWorkout(level: "Hard", minutes: 30)){
            Text("30 MINUTES")
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
            
            NavigationLink(destination: StartWorkout(level: "Hard", minutes: 40)){
            Text("40 MINUTES")
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
            
            NavigationLink(destination: StartWorkout(level: "Hard", minutes:50)){
            Text("50 MINUTES")
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
    
}


struct TimeViewHard_Previews: PreviewProvider {
    static var previews: some View {
        TimeViewMedium()
    }
}
