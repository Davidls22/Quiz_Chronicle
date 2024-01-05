//
//  ContentView.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 29/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray)
                .imageScale(.large)
                .scaleEffect(1.5)
                
            Text("Quiz Chronicle")
                .font(.largeTitle)
                .fontWeight(.semibold)
                
                
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
