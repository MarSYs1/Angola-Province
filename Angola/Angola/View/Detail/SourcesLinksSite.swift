//
//  SourcesLinksSite.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct SourcesLinksSite: View {
    
    var linkSiteProvince: AngolaProvince
    
    var body: some View {
        GroupBox{
            HStack{
                Text("Visita o site: \(linkSiteProvince.nome)")
                
                Spacer()
                
                Image(systemName: "network")
                    .foregroundColor(.accentColor)
                    .imageScale(.large)
                Link("Clica aqui", destination: URL(string: linkSiteProvince.siteGovernoProvincial)!)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourcesLinksSite(linkSiteProvince: MockData.instance.provinceInAngola[0])
}
