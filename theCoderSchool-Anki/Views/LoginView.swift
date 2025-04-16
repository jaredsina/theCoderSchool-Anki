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
            
            // Login Form
            Form{
                
                Section(header:Text("Login").font(.title2).frame(maxWidth: .infinity, alignment:.center).padding(.bottom, 12)){
                    /// Text Input similiar to html input
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    /// Password Input similiar to html password input
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                }
                Section(header:Button {
                    // Attempt Log in
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).foregroundColor(.green)
                        
                        Text("Log In")
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                    }
                }){
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
            RoundedRectangle(cornerRadius: 30).foregroundStyle(.green)
            VStack{
                Text("theCoderSchool Anki").font(.title).foregroundColor(.white).bold()
                Text("Science based code repitition for kids").font(.title3).foregroundColor(.white)
            }
        }.frame(width: UIScreen.main.bounds.width * 3,height: 200).padding(.bottom,0)
    }
}
