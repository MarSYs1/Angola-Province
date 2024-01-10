//
//  DetailView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct DetailView: View {
    
    var province: AngolaProvince
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading, spacing: 20){
                
                RectangleCustom(width: 400, height: 322, image: imageWonder)
             
                
                VStack(alignment: .leading, spacing: 20){
                  
                    VStack(alignment: .leading){
                        Text(province.nome)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Capital: \(province.capital)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    
                    VStack(alignment: .leading,spacing: 2){
                        Text("Fundada em \(province.fundada)")
                            .textModifer()
                        
                        Text("Extensão territorial de \(province.area)")
                            .textModifer()
                        
                        Text("Prefixo Telefonico: \(province.prefixoTelefonico)")
                            .textModifer()
                    }
                    
                    GroupBoxListMunicipality(municipality: province)
                    
                    
                    SourcesLinksSite(linkSiteProvince: province)
                        .padding(.bottom, 40)
                    
                }
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea()
        .background(.gray.opacity(0.15))
    }
}

/*#Preview {
    DetailView(province: MockData.devPreview.provinceInAngola[0])
} */
