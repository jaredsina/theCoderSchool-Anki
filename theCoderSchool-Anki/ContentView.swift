//
//  ContentView.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        ///lets you scroll between tabs using swipe gesture
        .tabViewStyle(.page)
        
    }
}
