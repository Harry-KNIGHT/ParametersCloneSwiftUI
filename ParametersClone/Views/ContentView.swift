//
//  ContentView.swift
//  ParametersClone
//
//  Created by Elliot Knight on 28/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isAirplaneModeOn = false
    var parameter: Parameter
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: Text("My profile")) {
                        HStack{
                            Image("creamy")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                            VStack(alignment: .leading) {
                                Text("Elliot Knight")
                                    .font(.title2)
                                Text("Id. Apple, iCloud+, médias et achats")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                }
                ForEach(ParameterSection.allCases, id: \.self) { section in
                    Section() {
                        ForEach(parameters.filter({$0.parameterSection == section })) { parameter in
                            HStack {
                                ZStack {
                                    Square(parameter: parameter)
                                    Image(systemName: parameter.sfSymbolImage)
                                        .foregroundColor(parameter.sfSymbolColor)
                                        .font(.system(size: 17))
                                }
                                if parameter.name == "Mode avion" {
                                    Toggle(parameter.name, isOn: $isAirplaneModeOn)
                                }else {
                                    Text(parameter.name)
                                    NavigationLink(destination: Text("Hello")) {}
                                }
                                /*
                                 if parameter.name == "Wi-Fi" && isAirplaneModeOn == false {
                                                                        Text("ApplePark Wifi")
                               .foregroundColor(.secondary)
                                                                    }else if parameter.name == "Wi-Fi" && isAirplaneModeOn == true {
                                                                        Text("Non")
                                                                            .foregroundColor(.secondary)
                                                                    }
                                 if parameter.name == "Bluetooth" && isAirplaneModeOn == false {
                                 Text("Oui")
                                 .foregroundColor(.secondary)
                                 }else if parameter.name == "Bluetooth" && isAirplaneModeOn == true {
                                 Text("Non")
                                 .foregroundColor(.secondary)
                                 }*/
                            }
                        }
                    }
                }
            }
            .navigationTitle("Réglages")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(parameter: Parameter(sfSymbolImage: "airplane", name: "Mode avion", backgroundColor: .orange, sfSymbolColor: .white, parameterSection: .connection))
    }
}
