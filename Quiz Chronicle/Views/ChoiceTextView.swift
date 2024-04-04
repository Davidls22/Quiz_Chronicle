//
//  ChoiceTextView.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 09/01/2024.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 200/255, green: 80/255, blue: 140/255)

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(accentColor)
            .foregroundColor(Color.white) 
            .cornerRadius(8)
    }
}


struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}
