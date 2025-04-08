//
//  WelcomePage.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/8/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack{
            Text("TheCoderSchool Anki")
                .font(.title)
                .fontWeight(.semibold)
            Text("Code Memorization for kids")
                .font(.title2)
        }
       
    }
}

#Preview {
    WelcomePage()
}
