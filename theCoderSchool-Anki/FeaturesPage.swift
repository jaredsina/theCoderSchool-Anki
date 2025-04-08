//
//  FeaturesPage.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/8/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack{
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
            FeatureCard(iconName: "gamecontroller.fill", description: "Learn to code through fun games and challenges!")
            FeatureCard(iconName:"person.3.sequence.fill", description:"Made just for kids - no confusing tech talk!")
            FeatureCard(iconName:"clock.badge.checkmark", description:"Short, quick lessons you can finish anytime!")
        }.padding()
    }
    
}

#Preview {
    FeaturesPage()
}
