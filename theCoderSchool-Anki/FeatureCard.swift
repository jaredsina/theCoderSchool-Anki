//
//  FeatureCard.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/8/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    /// body is like return in a React component (what the display will look like, logic comes before this)
    var body: some View {
        HStack{
            Image(systemName:iconName)
                .font(.title3)
                .frame(width: 50)
                .padding([.leading, .trailing], 6)
            Text(description)
            Spacer() /// push content to the left and fill width
        }
        .padding()
        ///.frame(maxWidth: .infinity) this works to set the width but they want us to use spacer to push content to the left
        .background{
            RoundedRectangle(cornerRadius: 12).foregroundStyle(.tint).opacity(0.75).brightness(0.25)
        }
        .foregroundStyle(.white)
        
        
    }
}

//#Preview {
//    FeatureCard(iconName: "gamecontroller.fill", description: "Learn to code through fun games and challenges!")
//}
