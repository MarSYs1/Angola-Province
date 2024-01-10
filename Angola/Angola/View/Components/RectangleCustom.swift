//
//  RectangleCustom.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

import SwiftUI

struct RectangleCustom: View {
    
    
    var width: Double
    var height: Double
     var image: String
    
    var body: some View {
    
            /*Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [.black, .black]),startPoint: .topLeading,endPoint:.bottomLeading)) */
        
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
        
                .frame(width: width,height: height)
            .clipShape(RoundedCorner(radius: 84, corners: [ .bottomRight]))
    }
}

#Preview {
    RectangleCustom(width: 400, height: 322, image: imageWonder)
}
