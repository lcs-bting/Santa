//
//  Gift.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-03.
//

import SwiftUI

struct Gift: View {
    var body: some View {
        VStack{
            List{
                ForEach(0..<10){ num in 
                    NavigationLink(destination: Text("Hello")){
                        Text("Hello")
                    }
                }
            }
        }
        
    }
}

struct Gift_Previews: PreviewProvider {
    static var previews: some View {
        Gift()
    }
}
