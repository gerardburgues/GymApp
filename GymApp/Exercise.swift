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
    
    static let example = Exercise(id:1, name:"Flexions",description: "Flexions amunt i abaix", difficulty: ["Medium"])
}

