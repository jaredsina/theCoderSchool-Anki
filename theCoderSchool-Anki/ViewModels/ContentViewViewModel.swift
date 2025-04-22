//
//  ContentViewViewModel.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/22/25.
//

import FirebaseAuth
import Foundation

class ContentViewViewModel : ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        // whenever the user signs in or signs out this listener will activate
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            self?.currentUserId = user?.uid ?? ""
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil // if nil not signed in
    }
}
