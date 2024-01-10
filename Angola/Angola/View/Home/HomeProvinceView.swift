//
//  HomeProvinceView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct HomeProvinceView: View {
    
    @EnvironmentObject var viewModelProvince: ProvinceAngolaViewModel
    
   
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 40){
                                 
                    RectangleCustom(width: 400, height: 322, image: imageWonder)
                           
                    LazyVStack{
                        ForEach(viewModelProvince.allProvinceAngola){ province in
                            NavigationLink {
                                DetailView(province: province)
                            } label: {
                                ProvinceRowView(province: province)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Home")
            .toolbar(.hidden)
            .background(.gray.opacity(0.10))
        }
    }
}

#Preview {
    HomeProvinceView()
        .environmentObject(ProvinceAngolaViewModel())
}
