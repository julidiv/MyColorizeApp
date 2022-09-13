//
//  RectangleView.swift
//  MyColorizeApp
//

//

import SwiftUI

struct RectangleView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(width: 380, height: 130)
            .overlay(Rectangle()
            .stroke(Color.white, lineWidth: 10))
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.white, lineWidth: 3))
            .cornerRadius(20)
        
    }
}

struct ColorBoard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(red: 11, green: 111, blue: 211)
    }
}
