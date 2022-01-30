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
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack{
                        Image("creamy")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("Elliot Knight")
                                .font(.title2)
                            Text("Id. Apple, iCloud+, médias et achat")
                                .font(.caption)
                                .foregroundColor(.primary)
                        }
                    }
                }
                ForEach(ParameterSection.allCases, id: \.self) { section in
                    Section() {
                        ForEach(parameters.filter({$0.parameterSection == section })) { parameter in
                            NavigationLink(destination: Text("Hello !")) {
                                HStack {
                                    ZStack {
                                        Square(parameter: parameter)
                                        Image(systemName : parameter.sfSymbolImage)
                                            .foregroundColor(parameter.sfSymbolColor)
                                            .font(.system(size: 17))
                                    }
                                    Text(parameter.name)
                                }
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
