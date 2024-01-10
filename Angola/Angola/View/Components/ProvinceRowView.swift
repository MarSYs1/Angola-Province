//
//  ProvinceRowView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct ProvinceRowView: View {
    
    var province: AngolaProvince
    
    var body: some View {
        HStack(spacing: 12){
            Text("\(String(province.nome.prefix(1)))")
                .font(.title)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .frame(width: 52, height: 52)
                .background(.red.gradient, in: .circle)
            
            VStack(alignment: .leading, spacing: 2){
                Text(province.nome)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.primary)
                
                
                Text("Capital: \(province.capital)")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                Text("Fundada em \(province.fundada)")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
            }
            .hSpacing(.leading)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(.background, in: .rect(cornerRadius: 14))
    }
}

#Preview {
    ProvinceRowView(province: MockData.devPreview.provinceInAngola[0])
}


#Preview {
    ProvinceRowView(province: MockData.devPreview.provinceInAngola[0])
        .preferredColorScheme(.dark)
}
