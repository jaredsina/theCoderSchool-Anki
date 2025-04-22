//
//  RegisterView.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/18/25.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack(spacing:0) {
            HeaderView(title:"Register", description:"Create an account")
            
            // Login Form
            Form{
                Section(header:Text("Register a new user").font(.title2).frame(maxWidth: .infinity, alignment:.center)){
                    
                    TextField("Your Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    /// Text Input similiar to html input
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    /// Password Input similiar to html password input
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                }
                
                Section(header:Text(viewModel.errorMessage).foregroundStyle(Color.red)){}
                
                Section(header:Button {
                    // Attempt Register
                    print("Register button was clicked")
                    viewModel.register()
                
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
