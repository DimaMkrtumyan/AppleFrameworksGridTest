//
//  ReusableCloseButton.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 16.02.24.
//

import SwiftUI

struct ReusableCloseButton: View {
    
    @Binding var isSelected: Bool
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Button {
                print("Close button tapped")
                isSelected.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
    }
}
