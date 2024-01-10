//
//  OnbordingView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct OnbordingView: View {
    
    @ObservedObject var viewModelGoToHome: ToComeInHome
   
    @StateObject var viewModelProvince = ProvinceAngolaViewModel()
    
    var body: some View {
        ZStack{
            if case ViewNavigation.home = viewModelGoToHome.gotoHome{
                viewModelGoToHome.homeView()
             
            }else{
                VStack{
                    
                    ZStack{
                        
                        RectangleCustom(width: 400, height: 682, image: imageWonder)
                        
                        VStack(alignment: .leading, spacing: 20){
                           
                            VStack(alignment: .leading){
                                Text("Conheça\nAngola")
                                    .font(.largeTitle.bold())
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.white)
                                    .shadow(radius: 12)
                                 
                                Text("Um país \ngrande e belo!")
                                    .font(.headline.bold())
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.white)
                            }
                            
                            
                            pointView(symbol: "map", title: "Conheça as províncias", subTitle: "Descobri por meio desse App quantas províncias angola tem!")
                            
                            pointView(symbol: "arrow.triangle.swap", title: "Descobre os município", subTitle: "Se você desconhece os municípios de Angola, esse é o app perfeito!")
                            
                            
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        viewModelGoToHome.goHome()
                    }, label: {
                        Text("Entrar")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(.red.gradient, in: .rect(cornerRadius: 20))
                            .contentShape(.rect)
                    })
                    .padding(.horizontal)
                    
                    Spacer()
                }
            .ignoresSafeArea()
            }
        }
    }
    
    
    @ViewBuilder
    func pointView(symbol: String, title: String, subTitle: String) -> some View{
        HStack(spacing: 20){
            
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(.red.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6 ,content: {

                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .shadow(radius: 12)
                
                Text(subTitle)
                    .font(.footnote)
                    .foregroundStyle(.white)
                    .shadow(radius: 12)
                    .lineLimit(2)
                    .frame(width: 220)
                
                
            })
        }
    }
}

#Preview(){
    OnbordingView(viewModelGoToHome: ToComeInHome())
        //.environmentObject(viewModelProvince)
}
