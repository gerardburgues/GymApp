//
//  SplashScreen.swift
//  prova
//
//  Created by Bernat Puig Font on 19/4/21.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var animate = false
    @State var endSplash = false
    
    var body: some View {
        ZStack {
            ContentView()
            ZStack {
                Image("bg")
                
                VStack {
                    Text("PERSONAL")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                    Text("FITNESS")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                    Text("APP")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                
                    
                    Image("icon")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: animate ? .fill : .fit)
                        .frame(width: animate ? nil : /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: animate ? nil : /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                        .scaleEffect(animate ? 3 : 1)
                        .frame(width: UIScreen.main.bounds.width)
                }
            }
            .ignoresSafeArea(.all, edges: .all)
            .onAppear(perform: animateSplash)
            .opacity(endSplash ? 0 : 1)
        }
    }
    
    func animateSplash() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(Animation.easeOut(duration: 1.85)) {
                animate.toggle()
            }
            withAnimation(Animation.easeOut(duration: 1.75)) {
                endSplash.toggle()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
