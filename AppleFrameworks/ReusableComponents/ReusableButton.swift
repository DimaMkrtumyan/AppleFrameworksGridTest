//
//  ReusableButton.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 16.02.24.
//

import SwiftUI

struct ReusableButton: View {
    
    @Binding var isShowing: Bool
    var title: String
    
    var body: some View {
        
        Button {
            isShowing.toggle()
        } label: {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 280, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.red)
                )
        }
    }
}
