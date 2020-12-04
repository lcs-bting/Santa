//
//  For who.swift
//  Santa
//
//  Created by Bill Ting on 2020-12-03.
//

import SwiftUI

struct For_who: View {
    // The user's name
    @State private var theUsersName = ""
    @State private var theUsersLetter = ""
    
    var body: some View {
        VStack{
            
            Text("Ask Gifts From Santa!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Form{
                Section{
                    TextField("Enter your name",
                              text: $theUsersName)
                        .padding(.horizontal, 25.0)
                    
                }
                

                
                Section{
                    TextField("What do you want from Santa?", text: $theUsersLetter)
                        .padding(.horizontal, 25.0)
                }
            }
        }
    }
    
    struct For_who_Previews: PreviewProvider {
        static var previews: some View {
            For_who()
        }
    }
}
