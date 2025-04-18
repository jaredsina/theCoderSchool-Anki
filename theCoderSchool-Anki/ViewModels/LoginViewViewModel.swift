//
//  LoginViewViewModel.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/15/25.
//


import FirebaseAuth
import Foundation

/// what does Observable Object mean?
class LoginViewViewModel: ObservableObject {
    // Published similiar to state will re render a view if it is changed
    @Published var email = ""
    @Published var password = "" /// what does @Published mean?
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    func login(){
        guard validate() else{
            return
        }
        
        
        // Try to log in
        Auth.auth().signIn(withEmail:email, password: password)
    }
     
    private func validate() -> Bool{
        // reset error message in login
        errorMessage = ""
        
        // guard makes sure that email and password are not empy before attempting login
        // remove whitespaces to avoid people just using empty spaces for login
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please fill in all fields"
            return false
        }
        
        // email should have @ and .com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false // guard needs to return
        }
        
        return true
    }
}
