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
            ZStack{
                RoundedRectangle(cornerRadius: 20) /// corner radius 0 = 90 deg bigger means more
                    .frame(width:150,height:150)
                    .foregroundStyle(.white) /// every apps accent color defaults to blue
                Image(systemName:"puzzlepiece.extension.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.tint)
            }
            
                
            Text("TheCoderSchool Anki")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top) /// .top really means Edge.Set.top but because of type inference we can just use .top
                .padding(.bottom)
            Text("Smart Code Memorization for Kids")
                .font(.title2)
        }
        ///.border(.orange,width:1.5) /// Borders are greating for testing layout issues if things arent behaving as you expect them to (similiar to google chrome debug tools)
        .padding()
        
       
    }
}
struct IconView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 150, height: 150)
                .foregroundStyle(.white)
            Image(systemName: "graduationcap.fill")
                .font(.system(size: 70))
                .foregroundStyle(.tint)
        }
    }
}


