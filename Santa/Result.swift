//
//  Result.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-03.
//

import SwiftUI

struct Result: View {
    var body: some View {
        VStack{
            Image("Thank You")
                .resizable()
                .frame(width: 300.0, height: 280.0)
                .scaledToFit()
            Spacer()
            
            NavigationLink(
                destination: ContentView()){
                Text("Back to home")
            }
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
