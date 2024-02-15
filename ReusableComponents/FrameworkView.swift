//
//  FrameworkView.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 15.02.24.
//

import SwiftUI

struct FrameworkView: View {
    
    var imageName: String
    var title: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6 )
        }
    }
}
