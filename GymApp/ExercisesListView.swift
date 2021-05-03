//
//  ExercisesListView.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 8/4/21.
//

import SwiftUI
import AVKit
struct ExercisesListView: View {
    let exercises:[Exercise]
    
    init(){
        
        let url = Bundle.main.url(forResource: "Exercises",
                                  withExtension: "json")!
        let data = try! Data(contentsOf: url)
        exercises = try! JSONDecoder().decode([Exercise].self, from : data)
        
    }
    
    //let exercise: Exercise
    var body: some View {
        
        
  
         
        VStack{
           
            Text("LIST OF EXERCISES")
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: 300,minHeight: 50)
                .background(Color.gray)
                .cornerRadius(10)
                .font(.title)
            
            
         
            List(exercises, id: \.id ){tip in
                
                VStack(alignment: .center) {
                    
                    Text(tip.name)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                        .padding(.bottom, 40.0)
                
                    Image(tip.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(5)
                        .padding(.bottom,40.0)
                    
                    
                    
                    Text(tip.description)
                        .font(.subheadline)
                        .lineSpacing(10.0)
                        .foregroundColor(.secondary)
                   Spacer()
                    
                }
                .frame(height: 655.0)
            }
                
        
       
        }
    }
}

struct ExercisesListView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ExercisesListView()
            ExercisesListView()
        }
    }
}


//                                VideoPlayer(player: AVPlayer(url: URL(string:"https://cdn.videvo.net/videvo_files/video/free/2018-09/small_watermarked/180419_Boxing_07_04_preview.mp4")!))
//                                    .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//

