//
//  Number Generator.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-04.
//

import SwiftUI

struct Number_Generator: View {
    @State private var randomNum = Int.random(in: 85..<100)
    @State private var tries = 1
    @Binding var rootIsActive : Bool
    
    var body: some View {
        
        VStack {
            
            Text("Are You Being a Good Kid?")
                .font(.largeTitle)
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
            
            Text("Santa never talks to a kid who has a score under 85%")
                .font(.title)
                .fontWeight(.light)
                .padding(.horizontal)
            
            Spacer()
            
            NavigationLink(destination: For_who(rootIsActive: $rootIsActive)){
                Text("Next")
                
                
            }
            .isDetailLink(false)
            
            
        }
        
    }
    func getNewNumber() {
        randomNum = Int.random(in: 85..<100)
    tries -= 1
    }
}


struct Number_Generator_Previews: PreviewProvider {
    static var previews: some View {
        Number_Generator(rootIsActive: .constant(false))
    }
}


