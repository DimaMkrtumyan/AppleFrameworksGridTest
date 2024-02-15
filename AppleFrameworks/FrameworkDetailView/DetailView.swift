//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 15.02.24.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                
                Spacer()
                
                Button {
                    print("Close button tapped")
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print("Learn More tapped")
            } label: {
                Text("Learn More")
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
}

#Preview {
    DetailView(framework: MockData.frameworks[0])
}
