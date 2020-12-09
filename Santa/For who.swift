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
    @Binding var rootIsActive : Bool
    
    var body: some View {
        
        VStack{
            
            Text("Talk to Santa!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            Form{
                Section{
                    TextField("Enter your name",
                              text: $theUsersName)
                        .padding(.horizontal, 25.0)
                    
                }
                
                
                
                Section(header: Text("What do you want to write to Santa")){
                    TextEditor(text: $theUsersLetter)
                        .padding(.horizontal, 25.0)
                }
                
                
            }
            
            NavigationLink(
                destination: Result(shouldPopToRootView: $rootIsActive)) {
                Text("Next")
            }
            .isDetailLink(false)
            
            
            
            
        }
    }
}


struct For_who_Previews: PreviewProvider {
    static var previews: some View {
        For_who(rootIsActive: .constant(false))
    }
}


