//
//  ContentView.swift
//  Profile
//
//  

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Analyze code for Model 1
            HStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                Circle()
                    .stroke(lineWidth: 5)
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(.blue)
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.orange))
                    .frame(width: 100, height: 100)
            }.padding()
            // Analyze code for Model 2
            HStack {
                // TODO: Model 1 - Create a shape using any of the shapes and modifiers you learned.
                Capsule()
                    .fill(.purple)
                    .overlay(Capsule()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.blue))
                        .frame(width: 100, height: 100)
                Diamond()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)
                // TODO: Model 2 - Create your custom shape
                Triangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
            }.padding()
            Spacer()
            HStack {
                Image("tuffy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                // TODO: Model 3 - Add image modifiers
                    .clipShape(Circle())
                    .overlay(Circle()
                                  .stroke(lineWidth: 5)
                                  .foregroundColor(.white))
                        .shadow(radius: 5)
                
                
                // TODO: Model 3 - Add your own image and use any of the modifiers you learned.
                Image("Tuffy-Cheering")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                // TODO: Model 3 - Add image modifiers
                    .clipShape(Diamond())
                    .overlay(Diamond()
                                  .stroke(lineWidth: 5)
                                  .foregroundColor(.orange))
                        .shadow(radius: 5)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
