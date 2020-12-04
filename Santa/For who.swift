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
            
            Text("Ask0 Gifts From Santa!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Form{
                Section{
                    TextField("Enter your name",
                              text: $theUsersName)
                        .padding(.horizontal, 25.0)
                    
                }
                
                Spacer()
                
                Section{
                    TextField("What do you want from Santa and what do you want to say?", text: $theUsersLetter)
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