//
//  ContentView.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 29/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let mainColor = Color(red: 255/255, green: 120/255, blue: 80/255)
    let accentColor = Color(red: 40/255, green: 170/255, blue: 110/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                Text("Who is the Author of 'The Lord of the Rings'?")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                Spacer()
                
                Image("JRRTolkein")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        Text("JRR Tolkien")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(accentColor)
                            .foregroundColor(Color.white) // Adjust text color for visibility
                            .cornerRadius(8)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        Text("JK Rowling")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(accentColor)
                            .foregroundColor(Color.white) // Adjust text color for visibility
                            .cornerRadius(8)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        Text("George RR Martin")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(accentColor)
                            .foregroundColor(Color.white) // Adjust text color for visibility
                            .cornerRadius(8)
                    })
                    
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
