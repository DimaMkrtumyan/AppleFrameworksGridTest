//
//  MainGridView.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

struct MainGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                DetailView(framework: framework)
            }
        }
        .tint(.green)
    }
}

#Preview {
    MainGridView()
}
