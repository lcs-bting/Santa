//
//  Number Generator.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-04.
//

import SwiftUI

struct Number_Generator: View {
    @State private var randomNum = Int.random(in: 90..<100)
    
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
            
            Button(action: {
                getNewNumber()
            }) {
                Image("Try")
                    .resizable()
                    .padding(.horizontal)
                    .scaledToFit()
            }
            
            Spacer()
            
            NavigationLink(destination: For_who()){
                Text("Next")
                
                
            }
            
            
        }
        
    }
    func getNewNumber() {
        randomNum = Int.random(in: 90..<100)
    }
}


struct Number_Generator_Previews: PreviewProvider {
    static var previews: some View {
        Number_Generator()
    }
}


