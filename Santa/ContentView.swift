//
//  ContentView.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-03.
//

import SwiftUI

struct ContentView: View {
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
                
                
                NavigationLink(destination: Gift()){
                    Image("Start")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    
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

