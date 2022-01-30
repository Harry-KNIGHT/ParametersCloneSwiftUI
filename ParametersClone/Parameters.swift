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
    let parameterSection: ParameterSection
    
    
}

enum ParameterSection: String, CaseIterable {
    case connection, notification, general, appWallet, iosApp1, iosApp2, fournisseurTv, allApp
}

var parameters: [Parameter] = [
    // Connection
    Parameter(sfSymbolImage: "airplane", name: "Mode avion", backgroundColor: .orange, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "wifi", name: "Wi-Fi", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "airpods.gen3", name: "Bluetooth", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "antenna.radiowaves.left.and.right", name: "Données cellulaires", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .connection),
    Parameter(sfSymbolImage: "personalhotspot", name: "Partage de connection", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .connection),
    
    // Notifications
    Parameter(sfSymbolImage: "bell.badge", name: "Notifications", backgroundColor: .red, sfSymbolColor: .white, parameterSection: .notification),
    Parameter(sfSymbolImage: "speaker.wave.3", name: "Sons et vibrations", backgroundColor: .red, sfSymbolColor: .white, parameterSection: .notification),
    Parameter(sfSymbolImage: "moon.fill", name: "Concentration", backgroundColor: .purple, sfSymbolColor: .white, parameterSection: .notification),
    Parameter(sfSymbolImage: "hourglass", name: "Temps d'écran", backgroundColor: .purple, sfSymbolColor: .white, parameterSection: .notification),
    
    //Général
    Parameter(sfSymbolImage: "gear", name: "Général", backgroundColor: .gray, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "switch.2", name: "Centre de contrôle", backgroundColor: .gray, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "textformat.size", name: "Luminosité d'affichage", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "iphone.smartbatterycase.gen2", name: "Écran d'acceuil", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "figure.roll", name: "Accessibilité", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "camera.filters", name: "Fond d'écran", backgroundColor: .mint, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "mic.fill", name: "Siri et recherche", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "faceid", name: "Face id et code", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "heart.text.square", name: "Appel d'urgence", backgroundColor: .red, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "globe.asia.australia", name: "Notification d'exposition", backgroundColor: .white, sfSymbolColor: .red, parameterSection: .general),
    Parameter(sfSymbolImage: "battery.100", name: "Batterie", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .general),
    Parameter(sfSymbolImage: "hand.raised.fill", name: "Confidentialité", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .general),
    //App Store & Wallet
    Parameter(sfSymbolImage: "applelogo", name: "App Store", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .appWallet),
    Parameter(sfSymbolImage: "tray.fill", name: "Carte et ApplePay", backgroundColor: .black, sfSymbolColor: .white, parameterSection: .appWallet),
    
    //iOSApp1
    Parameter(sfSymbolImage: "key.fill", name: "Mots de passe", backgroundColor: .gray, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "envelope.fill", name: "Mail", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "person.crop.circle", name: "Contacts", backgroundColor: .secondary, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "calendar", name: "Calendrier", backgroundColor: .white, sfSymbolColor: .red, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "note.text", name: "Notes", backgroundColor: .white, sfSymbolColor: .yellow, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "list.bullet", name: "Rappels", backgroundColor: .white, sfSymbolColor: .blue, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "waveform", name: "Dictaphone", backgroundColor: .white, sfSymbolColor: .red, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "phone.fill", name: "Téléphone", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "message.fill", name: "Messages", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "video.fill", name: "FaceTime", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "safari", name: "Safari", backgroundColor: .white, sfSymbolColor: .blue, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "cloud.sun", name: "Météo", backgroundColor: .blue, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "message.fill", name: "Messages", backgroundColor: .green, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "theatermasks", name: "Traduire", backgroundColor: .black, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "map.fill", name: "Plans", backgroundColor: .white, sfSymbolColor: .blue, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "globe.americas.fill", name: "Boussole", backgroundColor: .black, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "lines.measurement.horizontal", name: "Mesures", backgroundColor: .black, sfSymbolColor: .white, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "bolt.shield.fill", name: "Raccourcis", backgroundColor: .black, sfSymbolColor: .red, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "suit.heart.fill", name: "Santé", backgroundColor: .white, sfSymbolColor: .pink, parameterSection: .iosApp1),
    Parameter(sfSymbolImage: "house.fill", name: "Maison", backgroundColor: .white, sfSymbolColor: .orange, parameterSection: .iosApp1),
    
    // iOSAPP2
    Parameter(sfSymbolImage: "music.note", name: "Musique", backgroundColor: .red, sfSymbolColor: .white, parameterSection: .iosApp2),
    Parameter(sfSymbolImage: "photo.on.rectangle.angled", name: "Photos", backgroundColor: .white, sfSymbolColor: .green, parameterSection: .iosApp2),
    Parameter(sfSymbolImage: "camera.fill", name: "Appareil photo", backgroundColor: .secondary, sfSymbolColor: .primary, parameterSection: .iosApp2),
    Parameter(sfSymbolImage: "book.fill", name: "Livres", backgroundColor: .orange, sfSymbolColor: .white, parameterSection: .iosApp2),
    Parameter(sfSymbolImage: "mic", name: "Podcasts", backgroundColor: .yellow, sfSymbolColor: .white, parameterSection: .iosApp2),
    Parameter(sfSymbolImage: "gamecontroller.fill", name: "Game center", backgroundColor: .white, sfSymbolColor: .blue, parameterSection: .iosApp2),
    
    // Fournisseur TV
    Parameter(sfSymbolImage: "tv.fill", name: "Fournisseur TV", backgroundColor: .black, sfSymbolColor: .white, parameterSection: .fournisseurTv)
    
    
    
    
]




