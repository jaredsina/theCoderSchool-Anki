//
//  RegisterViewViewModel.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/18/25.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    @Published var name: String = ""
    
    init(){
    }
    
    func register (){
        guard validate() else {
            return
        }
        
        // Attempt registration
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else{
                print("no userId")
                return
            }
            print(userId)
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String){
        let newUser = User(id: id,
                           name:name,
                           email:email,
                           joined: Date().timeIntervalSince1970
        )
        
        let db = FirebaseFirestore.Firestore.firestore()
        print(db)
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    
    private func validate () -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard name.contains("@") && email.contains(".") else{
            return false
        }
        
        guard password.count >= 6 else{
            return false
        }
        
        return true
    }
}
