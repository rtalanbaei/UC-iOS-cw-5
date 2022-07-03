//
//  ContentView.swift
//  cw5.1
//
//  Created by Rawaah Alanbaei on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var height = ""
    @State var weight = ""
    @State var bmi = 0.0
    @State var result = ""
    
        var body: some View {
            
            VStack{
                Image("bmipic")
                    .resizable()
                    .padding()
                    .frame(width: 350, height: 250)
                
                Text("ادخل الطول و الوزن")
                    .padding()
                    .font(.largeTitle.bold())
                
                TextField("ادخل الطول بالمتر", text: $height)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    
                TextField( "ادخل الوزن بالكيلوغرام", text: $weight)
                    .multilineTextAlignment(.trailing)
                    .padding()
                
                Button(action: {
                    bmi = calcbmi(height: height, width: weight)
                    result = findresult(bmi: bmi)
                }, label:{
                    Text("احسب")
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .background(Color(red: 0.1, green: 0.638, blue: 0.493))
                        .frame(width: 250, height: 50)
                        .cornerRadius(30)
                })
                
                Text("BMI = \(bmi)\n Status = \(result)")
                    .padding()
                    .font(.title3)
                
        }
        
    }
    
        func calcbmi(height: String, width: String) -> Double {
            
            let newheight = Double(height)!
            let newweight = Double(weight)!
            
            return (newweight/(newheight * newheight))
    }
    
    func findresult(bmi: Double) -> String {
        
        if bmi <= 20.0{
            result = "ضعيف"
        }else if bmi <= 25.0{
            result = "جيد"
        }else{
            result = "سمين"
        }
        return result
}

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

