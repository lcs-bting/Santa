//
//  ContentView.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-03.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    var body: some View {
        NavigationView{
            VStack{
                
                Image("Santa")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 3000, height: 150)
                
                
                            
                Text("Write a Letter To Santa")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                
                
                Spacer()
                
                Image("Text")
                    .resizable()
                    .scaledToFit()
                
                NavigationLink(destination: Number_Generator(rootIsActive: $isActive), isActive: $isActive){
                    Image("Start")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    
                }
                .isDetailLink(false)
                
            }
            
            
            
            
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

