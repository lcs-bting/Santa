//
//  Number Generator.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-04.
//

import SwiftUI

struct Number_Generator: View {
    @State private var randomNum = Int.random(in: 90..<100)
    @State private var tries = 2
    
    var body: some View {
        
        VStack {
            
            Text("Are You Being a Good Kid?")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Text("\(randomNum)%")
                .font(.title2)
                .fontWeight(.heavy)
                .frame(width: 100.0, height: 100.0)
            
            Text("You have \(tries) tries left")
            
            if tries != 0 {
                Button(action: {
                    getNewNumber()
                }) {
                    Image("Try")
                        .resizable()
                        .padding(.horizontal)
                        .scaledToFit()
                }
            } else {
                Text("You have no more tries left")
            }

            
            
            Spacer()
            
            NavigationLink(destination: For_who()){
                Text("Next")
                
                
            }
            
            
        }
        
    }
    func getNewNumber() {
        randomNum = Int.random(in: 90..<100)
    tries -= 1
    }
}


struct Number_Generator_Previews: PreviewProvider {
    static var previews: some View {
        Number_Generator()
    }
}


