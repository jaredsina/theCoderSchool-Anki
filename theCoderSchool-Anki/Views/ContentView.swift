//
//  ContentView.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/4/25.
//

import SwiftUI

/// making this a global property so we can access this gradient throughout the app
let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    
    
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            TabView {
                WelcomePageView()
                FeaturesPageView()
            }
            .background(Gradient(colors:gradientColors))
            .foregroundStyle(.white)
            ///lets you scroll between tabs using swipe gesture
            .tabViewStyle(.page)
        }else{
            LoginView()
        }
        
    }
}
