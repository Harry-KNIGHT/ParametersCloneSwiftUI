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
    let sfSymbolColor: Color
    let parameterSection: parameterSection
    
    
}

enum parameterSection: String, CaseIterable {
    case connection = "Connection"
    case notification = "Notification"
    case general, appWallet, iosApp1, iosApp2, fournisseurTv, allApp
}

var parameters: [Parameter] = [
    Parameter(sfSymbolImage: "airplane", name: "Mode avion", backgroundColor: .orange, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "wifi", name: "Wi-Fi", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "airpods.gen3", name: "Bluetooth", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "antenna.radiowaves.left.and.right", name: "Données cellulaires", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "personalhotspot", name: "Partage de connection", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .connection),
    
    Parameter(sfSymbolImage: "pencil", name: "Notifications", backgroundColor: .red, sfSymbolColor: .white, parameterSection: .notification)
]




