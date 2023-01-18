//
//  ContentView.swift
//  StackSwiftUI
//
//  Created by Harsimrat on 18/01/23.
//

import SwiftUI

struct ContentView: View {
   
    
    @State var emaiId : String = String()
    @State var password : String = String()
    @State var heading : String = "Email Id*"
    var body: some View {
        
      
        
        
        VStack {
          

            Text("Sign In").font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all)
            
            TextFieldView(fieldName: $emaiId, heading:$heading)
            
            Text("Password *").font(.subheadline).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top:20, leading: 20, bottom:2, trailing: 20))
            SecureField("", text: $password ).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)).textContentType(.emailAddress)
                .frame(height: 50)
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                .padding([.horizontal],20)
            Button {
                debugPrint("Forgot Password?")
                
            } label: {
                Text("Forgot Password?").font(.footnote).bold().underline()
                
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 0))
            Button {
                debugPrint("Login")
              
            } label: {
                Text("Sign In").bold()
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .disabled((emaiId.count < 4 || password.count < 4)).padding(20).buttonStyle(.borderedProminent).tint(.blue).foregroundColor(.white).cornerRadius(8)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
