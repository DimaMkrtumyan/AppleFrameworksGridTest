//
//  MainGridView.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

struct MainGridView: View {
    
    private let colums: [GridItem] = [ GridItem(.flexible()),
                                       GridItem(.flexible()),
                                       GridItem(.flexible()) ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    MainGridView()
}
