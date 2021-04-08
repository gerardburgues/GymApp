//
//  Exercises.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 8/4/21.
//

import Foundation


struct Exercise: Decodable{
    
     
    let id: Int
    let name: String
    let description: String
    let difficulty: [String]?
}
