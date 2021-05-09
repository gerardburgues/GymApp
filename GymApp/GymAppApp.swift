//
//  GymAppApp.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 31/3/21.
//

import SwiftUI
import Firebase

@main

struct GymAppApp: App {
    init() {
        FirebaseApp.configure()
      }
    var body: some Scene {
        WindowGroup {
           // SplashScreen()
        
           
                ContentView()
                //LevelsView()
                //TimeView()
                //ExercisesListView()
            
        
        }
    }
}
