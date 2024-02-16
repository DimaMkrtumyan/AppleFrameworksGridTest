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
                        FrameworkView(framework: framework)
                            .onTapGesture {
                                print("Framework Tapped")
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isFrameworkSelected, content: {
                DetailView(framework: viewModel.selectedFramework ?? MockData.frameworks[0],
                isFrameworkSelected: $viewModel.isFrameworkSelected)
            })
        }
    }
}

#Preview {
    MainGridView()
}
