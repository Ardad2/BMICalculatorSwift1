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
    //private var BMI: Float { (Float(height) ?? 0) + (Float(weight) ?? 0) }
    private var BMI: Float { (Float(weight) ?? 0) / ( (Float(height) ?? 0) * (Float(height) ?? 0) ) * 703 }
    @State var BMIString: String = "";
    @State var status: String = "";
    @State var statusColor: Int = 0;
    
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
        
        HStack{
            
            if (statusColor == 0)
            {
                Text(status).foregroundColor(.blue);
            }
            
            else if (statusColor == 1)
            {
                Text(status).foregroundColor(.green);
            }
            
            else if (statusColor == 2)
            {
                Text(status).foregroundColor(.purple);
            }
            else
            {
                Text(status).foregroundColor(.red);
            }
            
            
        }
        
        Button(action: {
            self.BMIString = "\(self.BMI)"
            
            if (BMI < 18)
            {
                status = "You are Underweight..."
                statusColor = 0;
            }
            
            else if (BMI >= 18 && BMI < 25 )
            {
                status = "You are Normal..."
                statusColor = 1;
            }
            else if (BMI >= 25 && BMI <= 30 )
            {
                status = "You are Pre-Obese..."
                statusColor = 2;
            }
            else if (BMI > 30)
            {
                status = "You are Obsee..."
                statusColor = 3;
            }
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
