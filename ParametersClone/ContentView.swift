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
            Form {
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
                Section {
                    ForEach(parameters) { parameter in
                        HStack {
                        Image(systemName : parameter.sfSymbolImage)
                                .foregroundColor(.white)
                                .padding(5)
                                .background(parameter.backgroundColor)
                                .cornerRadius(7)
                        Text(parameter.name)
                            
                                
                            
                        }
                    }
                }
                
            }
          
        }
        .navigationTitle("Réglages")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(parameter: Parameter(sfSymbolImage: "airplane", name: "Mode avion", backgroundColor: .orange))
    }
}
