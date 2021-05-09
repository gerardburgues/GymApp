//
//  Exercises.swift
//  GymApp
//
//  Created by Gerard Burgués Llavall on 8/4/21.
//

import Foundation


//struct Exercise: Decodable{
//    
//     
//    let id: Int
//    let name: String
//    let description: String
//    let difficulty: [String]?
//    let image:String
//    
//    //static let example = Exercise(id:1, name:"Flexions",description: "Flexions amunt i abaix", difficulty: ["Medium"],image:"BG")
//}
struct Exercise:Decodable{
    
     
    let id: Int
    let name: String
    let description: String
    let difficulty: [String]?
    let image:String
}
#if DEBUG
let example = [Exercise(id:1, name:"Flexions",description: "Flexions amunt i abaix", difficulty: ["Medium"],image:"BG"),
                  Exercise(id:2, name:"Pullupse",description: "Description of pullups", difficulty: ["Medium"],image:"Pushups")
]
#endif

