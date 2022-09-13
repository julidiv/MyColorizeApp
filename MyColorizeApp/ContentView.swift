//
//  ContentView.swift
//  MyColorizeApp
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Double.random(in: 0...255 )
    @State private var red: Double = 11
    @State private var green: Double = 111
    @State private var blue: Double = 211
    
    
    var body: some View {
        
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            VStack {
                RectangleView(red: red, green: green, blue: blue)
                
                ColorSlidersView(value: $red,sliderColor: .red)
                ColorSlidersView(value: $green,sliderColor: .green)
                ColorSlidersView(value: $blue,sliderColor: .blue)
                
                Spacer()
                
                
                
            }
            
            .padding()
            
            
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSlidersView: View {
    @Binding var value: Double
    let sliderColor: Color
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(Color.white)
            Slider(value: $value,in: 0...255,step: 1)
                .accentColor(sliderColor)
            Text("\(lround(value))")
                .foregroundColor(Color.black)
                .frame(width: 70, height: 30)
                .background()
                .cornerRadius(5)
            
            
        }
    }
}
