//
//  ContentView.swift
//  CSE335Lab1Part1
//
//  Created by Arjun Dadhwal on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: Float = 0
    @State var weight: Float = 0
    @State var BMI: Float = 0
    @State var status: String = ""
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter();
        formatter.numberStyle = .Float
        return formatter
    }()
    
    var body: some View {
        VStack{
            Text("BMI Calculator")
        }

        HStack{
            Text("Height: ")
            Spacer()
            Spacer()
            TextField("", value: $height, format: .number);
        }
        HStack{
            Text("Weight: ")
            Spacer()
            Spacer()
            TextField("", value: $weight, format: .number);
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
