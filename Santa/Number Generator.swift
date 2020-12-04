//
//  Number Generator.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-04.
//

import SwiftUI

struct Number_Generator: View {
    @State private var randomNum:Int?
    
    var body: some View {
        NavigationView{
            VStack {
                
                Text("Are You Being a Good Kid?")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Text("\(randomNum!)")
                
                Button(action: {randomNum = Int.random(in : 90...100)}){
                    Image("Try")
                }
                
                
            }
        }
    }
    
    struct Number_Generator_Previews: PreviewProvider {
        static var previews: some View {
            Number_Generator()
        }
    }
}
