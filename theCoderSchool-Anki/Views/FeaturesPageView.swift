//
//  FeaturesPage.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/8/25.
//

import SwiftUI

struct FeaturesPageView: View {
    var body: some View {
        VStack(spacing:30){
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top,100)
            FeatureCardView(iconName: "gamecontroller.fill", description: "Learn to code through fun games and challenges!")
            FeatureCardView(iconName:"person.3.sequence.fill", description:"Made just for kids - no confusing tech talk!")
            FeatureCardView(iconName:"clock.badge.checkmark", description:"Short, quick lessons you can finish anytime!")
            
            Spacer()
        }.padding()
    }
    
}

