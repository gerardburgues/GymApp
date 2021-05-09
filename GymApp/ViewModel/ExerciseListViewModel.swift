//
//  ExerciseListViewModel.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 9/5/21.
//

import Foundation
import Combine

class ExerciseListViewModel: ObservableObject{
    
    @Published var exerciseViewModel = [ExerciseViewModel]()
    
    init(){
        self.exerciseViewModel = example.map{ exercise in
            
            ExerciseViewModel(exer: Exercise)
            
            
        }
    }
}
