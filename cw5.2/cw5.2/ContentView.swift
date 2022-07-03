//
//  ContentView.swift
//  cw5.2
//
//  Created by Rawaah Alanbaei on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var emoji = ["🤣", "🤩", "🥳", "😭", "😤", "🤧"]
    @State var face = ""
    
    var body: some View {
        
        VStack{

            Text("اختار الايموجي اللي يعبر عن يومك:")
                .font(.headline)
                .foregroundColor(.black)
                .fontWeight(.heavy)
                .padding()
            
            
            Text(face)
                .font(.largeTitle)
                .padding()
            
            
            ScrollView(.horizontal){
            HStack{
                
                ForEach(emoji, id:\.self) { feeling in
                    Text(feeling)
                        .font(.largeTitle)
                        .padding()
                        .background(.mint)
                        .clipShape(Circle())
                        .onTapGesture {
                            face = feeling
                        }
                    
                    
                }
                
            }
        }
        
               }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
