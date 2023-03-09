//
//  DinoModel.swift
//  MyTestApp
//
//  Created by Lina on 9/03/23.
//

import Foundation

struct DinoModel: Decodable {
    
    let name: String?
    let description: String?
    
    private enum CodingKeys: String, CodingKey {
        
        case name = "Name"
        case description = "Description"
    }
}
