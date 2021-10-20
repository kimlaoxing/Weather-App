//
//  CityNameView.swift
//  kfm-ios-test v1.1
//
//  Created by Macbook Pro  on 20/10/21.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var date: String
    var body: some View {
        HStack{
            VStack(alignment: .center, spacing: 10){
                Text(city)
                    .font(.title2)
                    .bold()
                Text(date)
                    .font(.body)
            }.foregroundColor(.black)
        }
    }
}

