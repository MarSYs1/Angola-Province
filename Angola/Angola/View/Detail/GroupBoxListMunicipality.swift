//
//  GroupBoxListMunicipality.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct GroupBoxListMunicipality: View {
    
    var municipality: AngolaProvince
    
    var body: some View {
        GroupBox{
            DisclosureGroup("Municípios"){
                VStack(alignment: .leading, spacing: 4){
                    ForEach(municipality.municipios, id: \.self){municipality in
                        
                        Divider()
                        .padding(.vertical,4)
                        
                        Text(municipality)
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

#Preview {
    GroupBoxListMunicipality(municipality: MockData.devPreview.provinceInAngola[0])
}

#Preview {
    GroupBoxListMunicipality(municipality: MockData.devPreview.provinceInAngola[0])
        .preferredColorScheme(.dark)
}
