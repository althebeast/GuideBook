//
//  City.swift
//  GuideBook
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import Foundation

struct City: Identifiable{
    
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
