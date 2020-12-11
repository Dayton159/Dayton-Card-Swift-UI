//
//  InfoView.swift
//  Dayton Card Swift UI
//
//  Created by Dayton on 08/07/20.
//  Copyright © 2020 Dayton. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text:String
    let imageName:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack{
                    
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    
                    Text(text).foregroundColor(Color("Info Color"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            //render view to fit the size of our component
            .previewLayout(.sizeThatFits)
    }
}
