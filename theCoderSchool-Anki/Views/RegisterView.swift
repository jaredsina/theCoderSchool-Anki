//
//  RegisterView.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/18/25.
//

import SwiftUI

struct RegisterView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var errorMessage: String = ""
    @State var name: String = ""
    var body: some View {
        VStack {
            HeaderView(title:"Register", description:"Create an account")
            
            // Login Form
            Form{
                Section(header:Text("Register a new user").font(.title2).frame(maxWidth: .infinity, alignment:.center)){
                    
                    TextField("Your Name", text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    /// Text Input similiar to html input
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    
                    /// Password Input similiar to html password input
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                }
                
                Section(header:Text(errorMessage).foregroundStyle(Color.red)){}
                
                Section(header:Button {
                    // Attempt Register
                 
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).foregroundColor(.green)
                        
                        Text("Register")
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                    }
                }){}
                Section(header:NavigationLink("Temporary Create Account Link", destination: RegisterView()).foregroundStyle(.blue)){}
            }
        }
    }
}

//#Preview {
////    RegisterView()
////}
