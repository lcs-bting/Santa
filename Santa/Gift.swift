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
                NavigationLink(destination: For_who() ){
                    Text("Ask For some Gift!")
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
