//
//  MainGridView.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 14.02.24.
//

import SwiftUI

struct MainGridView: View {
    
    private let colums: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        FrameworkView(imageName: "app-clip", title: "App Clips")
    }
}

#Preview {
    MainGridView()
}
