//
//  ExercisesListView.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 8/4/21.
//

import SwiftUI

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
                     
                            Text(tip.name)
               
                    }.frame(width: 400, height: 700, alignment: .leading)
       
            
         
        }
        
    }
}

struct ExercisesListView_Previews: PreviewProvider {
    static var previews: some View {

        ExercisesListView()
    }
}
