//
//  AngolaApp.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 09/01/2024.
//

import SwiftUI

@main
struct AngolaApp: App {
    
    @StateObject var viewModelProvince = ProvinceViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                OnbordingView(viewModelGoToHome: ToComeInHome())
                    .environmentObject(viewModelProvince)
            }
        }
    }
}
