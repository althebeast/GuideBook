//
//  CityCard.swift
//  GuideBook
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import SwiftUI

struct CityCard: View {
    
    var city: City
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .background {
                    Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            
            VStack(alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                    
                Spacer()
                Text(city.summary)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
    }
}

struct CityCard_Previews: PreviewProvider {
    static var previews: some View {
        CityCard(city: City(name: "Tokyo", summary: "Tsukiji Market is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores.", imageName: "tokyo", attractions: [Attraction]()))
    }
}
