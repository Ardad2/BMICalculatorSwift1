//
//  ContentView.swift
//  CSE335Lab1Part1
//
//  Created by Arjun Dadhwal on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: String = "";
    @State var weight: String = "";
    private var BMI: Float { (Float(height) ?? 0) + (Float(weight) ?? 0) }
    @State var BMIString: String = "";
    @State var status: String = ""
    
    
    var body: some View {
        VStack{
            Text("BMI Calculator")
        }

        HStack{
            Text("Height: ")
            Spacer()
            Spacer()
            TextField("", text: $height).keyboardType(.numberPad);
        }
        HStack{
            Text("Weight: ")
            Spacer()
            Spacer()
            TextField("", text: $weight).keyboardType(.decimalPad);
        }
                
        HStack{
            Text("BMI: ")
            Spacer()
            Spacer()
            Text(BMIString);
        }

        Spacer()
        Button(action: {
            self.BMIString = "\(self.BMI)"
        }) {
            Text("Calculate BMI")
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
