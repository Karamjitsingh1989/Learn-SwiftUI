//
//  ContentView.swift
//  ListView
//
//  Created by Karamjit Singh on 18/01/23.
//

import SwiftUI

struct ContentView: View {
   
    let characters = JsonDecoder.decodeLocalJsonFile(fileName: "ChartoonCharacters", responseModel: Characters.self)
    var body: some View {
        NavigationView {
            List {
                if let characterArr = characters {
                    ForEach(characterArr, id: \.Id) { characterModel in
                        Section(header: Text(characterModel.name).font(.subheadline)) {
                            ForEach(characterModel.Characters, id:\.CharacterId) { CharacterObj in
                                NavigationLink(destination: CharacterDetailView(characterModel: CharacterObj)) {
                                    CharacterRow(characterModel:CharacterObj)
                                }
                            }
                        }
                    }
                }
            }
        }.navigationBarTitle("Sonic Movie Characters")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
