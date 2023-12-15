//
//  Attraction.swift
//  GuideBook
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import Foundation

struct Attraction: Identifiable, Decodable{
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
