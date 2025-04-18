//
//  LoginView.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/15/25.
//

import SwiftUI

struct LoginView: View {
    /// what is a stateobject?
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack(spacing:0){
                // Header
                HeaderView(title: "theCoderSchool Anki", description: "Science based code repitition for kids")
                
                // Login Form
                Form{
                    
                    
                    
                    Section(header:Text("Login").font(.title2).frame(maxWidth: .infinity, alignment:.center)){
                        /// Text Input similiar to html input
                        TextField("Email Address", text: $viewModel.email)
                            .textFieldStyle(DefaultTextFieldStyle())
                            .autocorrectionDisabled()
                        
                        
                        /// Password Input similiar to html password input
                        SecureField("Password", text: $viewModel.password)
                            .textFieldStyle(DefaultTextFieldStyle())
                    }
                    
                    Section(header:Text(viewModel.errorMessage).foregroundStyle(Color.red)){}
                    
                    Section(header:Button {
                        // Attempt Log in
                        viewModel.login()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).foregroundColor(.green)
                            
                            Text("Log In")
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
}


//#Preview {
//    LoginView()
//}

