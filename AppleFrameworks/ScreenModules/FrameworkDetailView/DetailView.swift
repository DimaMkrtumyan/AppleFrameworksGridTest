//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 15.02.24.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    @Binding var isFrameworkSelected: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack(alignment: .center) {
            
            ReusableCloseButton(isSelected: $isFrameworkSelected)
            .padding()
            
            Spacer()
            
            FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            ReusableButton(isShowing: $isShowingSafariView,
                                title: "Learn More")
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    DetailView(framework: MockData.frameworks[0], 
               isFrameworkSelected: .constant(false))
}
