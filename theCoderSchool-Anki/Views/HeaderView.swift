//
//  Header.swift
//  theCoderSchool-Anki
//
//  Created by Jared Sinai Hernandez Adame on 4/18/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let description: String
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30).foregroundStyle(.green)
            VStack{
                Text(title).font(.title).foregroundColor(.white).bold()
                Text(description).font(.title3).foregroundColor(.white)
            }
        }.frame(width: UIScreen.main.bounds.width * 3,height: 200)
    }

}
