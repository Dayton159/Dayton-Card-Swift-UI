//
//  ContentView.swift
//  Dayton Card Swift UI
//
//  Created by Dayton on 08/07/20.
//  Copyright © 2020 Dayton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                
                Image("Dayton")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    //clip image shape to circle
                    .clipShape(Circle())
                    //layer secondary view in front of image
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                
                
                
                Text("Dayton")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    //text or object color as long as its not vector images(jpg or jpeg)
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                
                //separating "about me" content with "contact me" content
                //separating the content into top and bottom area
                Divider()
                
                
                InfoView(text: "+62 3826 1338", imageName: "phone.fill")
                InfoView(text: "dayton159@gmail.com", imageName: "envelope.fill")

                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


