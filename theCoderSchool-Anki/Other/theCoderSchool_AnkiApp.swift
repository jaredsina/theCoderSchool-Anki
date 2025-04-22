//
//  theCoderSchool_AnkiApp.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/4/25.
//

import SwiftUI
import Firebase

@main
struct theCoderSchool_AnkiApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().preferredColorScheme(.light)
        }
    }
}
