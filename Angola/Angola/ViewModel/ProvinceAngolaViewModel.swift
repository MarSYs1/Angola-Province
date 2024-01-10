//
//  ProvinceAngolaViewModel.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI
import Combine

class ProvinceAngolaViewModel: ObservableObject{
    
    @Published var allProvinceAngola: [AngolaProvince] = []
    
    init(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.allProvinceAngola.append(contentsOf: MockData.instance.provinceInAngola)
        }
    }
}
