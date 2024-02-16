//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Dmitriy Mkrtumyan on 15.02.24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
 
    var selectedFramework: Framework? {
        didSet {
            isFrameworkSelected.toggle()
        }
    }
    @Published var isFrameworkSelected = false
    let colums: [GridItem] = [ GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()) ]
}
