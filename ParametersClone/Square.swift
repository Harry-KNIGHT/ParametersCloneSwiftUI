//
//  Square.swift
//  ParametersClone
//
//  Created by Elliot Knight on 30/01/2022.
//

import SwiftUI

struct Square: View {
    let parameter: Parameter
    var body: some View {
        ZStack {
            if parameter.backgroundColor == .white {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 0.5)
                    .frame(width: 30, height: 30)
            } else {
                RoundedRectangle(cornerRadius: 8)
                    .fill(parameter.backgroundColor)
                    .frame(width: 30, height: 30)
            }
        }
    }
}

struct Square_Previews: PreviewProvider {
    static var previews: some View {
        Square(parameter: Parameter(sfSymbolImage: "phone", name: "Call", backgroundColor: .blue, sfSymbolColor: .green, parameterSection: .general))
    }
}
