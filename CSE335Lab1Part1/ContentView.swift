//
//  ContentView.swift
//  CSE335Lab1Part1
//
//  Created by Arjun Dadhwal on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: Float = 0;
    @State var weight: Float = 0;
    @State var BMI: Float = 0;
    @State var BMIString: String = "";
    @State var status: String = ""
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter();
        formatter.numberStyle = .decimal
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
            TextField("", value: $height, formatter: formatter).keyboardType(.numberPad);
        }
        HStack{
            Text("Weight: ")
            Spacer()
            Spacer()
            TextField("", value: $weight, formatter: formatter).keyboardType(.numberPad);
        }
                
        HStack{
            Text("BMI: ")
            Spacer()
            Spacer()
            Text(BMIString)
        }

        Spacer()
        Button(action: {
            
            BMI = (weight/(height*height)) * 703;
            
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
