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
    private var BMI: Float { (Float(weight) ?? 0) / ( (Float(height) ?? 0) * (Float(height) ?? 0) ) * 703 }
    @State var BMIString: String = "";
    @State var status: Int = -1;
    
    var body: some View {
        HStack{
            Text("BMI Calculator").foregroundColor(.blue);

        }
        VStack{
        
            VStack{
        HStack{
            Text("Height: ")
            Spacer()
            Spacer()
            TextField("", text: $height).keyboardType(.decimalPad);
            
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
            }
                

        Spacer()
        
        HStack{
            
            if (status == 0)
            {
                Text("You are Underweight...").foregroundColor(.blue);
            }
            
            else if (status == 1)
            {
                Text("You are Normal...").foregroundColor(.green);
            }
            
            else if (status == 2)
            {
                Text("You are Pre-Obese...").foregroundColor(.purple);
            }
            else if (status == 3)
            {
                Text("You are Obese...").foregroundColor(.red);
            }
            else
            {
                Text("");
            }
            
            
        }
        
        Button(action: {
            if (BMI > 0)
            {
            self.BMIString = "\(self.BMI)"
            }
            
            if (BMI > 0 && BMI < 18)
            {
                status = 0;
            }
            
            else if (BMI >= 18 && BMI < 25 )
            {
                status = 1;
            }
            else if (BMI >= 25 && BMI <= 30 )
            {
                status = 2;
            }
            else if (BMI > 30)
            {
                status = 3;
            }
        }) {
            Text("Calculate BMI")
        }
        
        
        }.padding(100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
