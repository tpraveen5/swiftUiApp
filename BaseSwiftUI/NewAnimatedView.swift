//
//  NewAnimatedView.swift
//  BaseSwiftUI
//
//  Created by Praveen Talari on 13/11/24.
//

import SwiftUI
//All vstack basics
struct NewAnimatedView: View {
    @State var username:String = String()
    @State var password:String = String()
    var body: some View {
        VStack {
            Text("Login").font(.largeTitle).padding()
            Text("Test with Swift UI").font(.subheadline).padding()
            
            TextField("Username", text: $username)
                .padding()
                .background(Color.lightGray)
                .cornerRadius(6.0)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.lightGray)
                .cornerRadius(6.0)
            HStack {
                Button {
                    debugPrint("TappedLogin")
                } label: {
                    Text("SignUp")
                }.padding()
                Spacer()
                Button {
                    debugPrint("TappedLogin")
                } label: {
                    Text("Forgot Password")
                }.padding()
            }
        }
        .padding()
       
       
    }
}

#Preview {
    NewAnimatedView()
}
