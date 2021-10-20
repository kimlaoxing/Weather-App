//
//  ContentView.swift
//  kfm-ios-test v1.1
//
//  Created by Macbook Pro  on 20/10/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                MenuHeaderView(cityVM: cityVM)
                ScrollView(showsIndicators: false){
                    CityView(cityVM: cityVM)
                }
            }.padding(.top, 40)
        }.background(Color.yellow)
                        .edgesIgnoringSafeArea(.all)
    }
}

