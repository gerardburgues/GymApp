//
//  ExerciseViewModel.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 9/5/21.
//

import Foundation

class ExerciseViewModel: ObservableObject, Identifiable{
    
    @Published var exer:Exercise
    
    var id: Int
 
    
    init(exer: Exercise){
        self.exer = exer
        
        
        
        $exer
            .map{ exer in
                exer.id
                
            }
            .assign(to: \.id, on:self)
           
     
        
    }
}
