//
//  LoginView.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/15/25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack{
            // Header
            HeaderView()
            
            Spacer()
            
            Form{
                /// Text Input similiar to html input
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                /// Password Input similiar to html password input
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    // Attempt Log in
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).foregroundColor(.yellow)
                        
                        Text("Log In")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
        }
       
    }
}


//#Preview {
//    LoginView()
//}

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30).foregroundStyle(.green).rotationEffect(.init(degrees: 15)).offset(y:-100)
            VStack{
                Text("theCoderSchool Anki").font(.title).foregroundColor(.white).bold()
                Text("Science based code repitition for kids").font(.title3).foregroundColor(.white)
            }
        }.frame(width: UIScreen.main.bounds.width * 3,height: 400).offset(y:-100)
    }
}
