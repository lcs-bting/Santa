//
//  Result.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-03.
//

import SwiftUI

struct Result: View {
    @Binding var shouldPopToRootView : Bool
    
    var body: some View {
        VStack{
            Image("Thank You")
                .resizable()
                .frame(width: 300.0, height: 280.0)
                .scaledToFit()
            Spacer()
            
            Text("Your letter has been sent")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                print("about to pop to root view")
                shouldPopToRootView = false
                print("popped to root view")
            }, label: {
                Text("Back to home")
            })
            
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result(shouldPopToRootView: .constant(false))
    }
}
