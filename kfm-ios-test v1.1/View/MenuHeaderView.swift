//
//  MenuHeaderView.swift
//  kfm-ios-test v1.1
//
//  Created by Macbook Pro  on 20/10/21.
//

import SwiftUI

struct MenuHeaderView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    @State private var searchTerm = "San Francisco"
    
    var body: some View {
        HStack{
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
            Button{
                cityVM.city = searchTerm
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow)
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.black)
        .padding()
        .background(ZStack(alignment: .leading){
            Image(systemName: "magnifyingglass")
                .foregroundColor(.yellow)
                .padding(.leading, 10)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black.opacity(0.5))
        })
    }
}

