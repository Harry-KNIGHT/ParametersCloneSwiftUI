//
//  ParametersCloneApp.swift
//  ParametersClone
//
//  Created by Elliot Knight on 28/01/2022.
//

import SwiftUI

@main
struct ParametersCloneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(parameter: Parameter(sfSymbolImage: "airplane", name: "Mode zobe", backgroundColor: .orange, sfSymbolColor: .white, parameterSection: .connection))
        }
    }
}
