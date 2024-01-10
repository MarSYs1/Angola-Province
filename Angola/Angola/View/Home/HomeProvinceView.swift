//
//  HomeProvinceView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct HomeProvinceView: View {
    
    @ObservedObject var viewModel = ProvinceViewModel()
    
   
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 40){
                                 
                    RectangleCustom(width: 400, height: 322, image: imageWonder)
                           
                    LazyVStack{
                        ForEach(viewModel.allProvinceAngola){ province in
                            NavigationLink {
                                DetailView(province: province)
                            } label: {
                                ProvinceRowView(province: province)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .padding(.bottom, 30)
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Home")
            .onAppear {
                viewModel.dataService.getProvince()
             }
            .toolbar(.hidden)
            .background(.gray.opacity(0.10))
        }
    }
}

#Preview {
    HomeProvinceView()
}
