//
//  Parameters.swift
//  ParametersClone
//
//  Created by Elliot Knight on 28/01/2022.
//

import Foundation
import SwiftUI

struct Parameter: Identifiable {
    var id = UUID()
    
    let sfSymbolImage: String
    let name: String
    let backgroundColor: Color
    
}

var parameters: [Parameter] = [
    Parameter(sfSymbolImage: "airplane", name: "Mode avion", backgroundColor: .orange)
]



