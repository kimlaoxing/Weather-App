//
//  CityView.swift
//  kfm-ios-test v1.1
//
//  Created by Macbook Pro  on 20/10/21.
//

import SwiftUI

struct CityView: View {
    @ObservedObject var cityVM: CityViewViewModel
    var body: some View {
        VStack{
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
        }.padding()
    }
}

