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
    let paremeterSection: parametersSection
}

enum parametersSection: String, CaseIterable {
    case connection = "Connection"
    case notification = "Notification"
    case general = "Général"
    case appWallet = "AppWallet"
    case iosApp1 = "iOSApp1"
    case iosApp2 = "iOSApp2"
    case fournisseurTv = "Free, il a tout compris"
    case allApp = "All App"
}

var parameters: [Parameter] = [
    Parameter(sfSymbolImage: "airplane", name: "Mode avion", backgroundColor: .orange, sfSymbolColor: .white, paremeterSection: .connection),
    Parameter(sfSymbolImage: "wifi", name: "Wi-Fi", backgroundColor: .blue, sfSymbolColor: .white, paremeterSection: .connection),
    Parameter(sfSymbolImage: "airpods.gen3", name: "Bluetooth", backgroundColor: .blue, sfSymbolColor: .white, paremeterSection: .connection),
    Parameter(sfSymbolImage: "antenna.radiowaves.left.and.right", name: "Données cellulaires", backgroundColor: .green, sfSymbolColor: .white, paremeterSection: .connection),
    Parameter(sfSymbolImage: "personalhotspot", name: "Partage de connection", backgroundColor: .green, sfSymbolColor: .white, paremeterSection: .connection),
    
    Parameter(sfSymbolImage: "pencil", name: "Notifications", backgroundColor: .red, sfSymbolColor: .white, paremeterSection: .notification)
]



