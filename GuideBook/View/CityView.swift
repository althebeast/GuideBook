//
//  ContentView.swift
//  GuideBook
//
//  Created by Alperen Sarışan on 11.12.2023.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        VStack {
            
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }

                    }
                }
            }
        }
        .ignoresSafeArea()
        .padding(.horizontal)
        .onAppear{
            cities = dataService.getData()
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
