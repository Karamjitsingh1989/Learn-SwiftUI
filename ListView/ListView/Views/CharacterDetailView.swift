//
//  CharacterDetailView.swift
//  ListView
//
//  Created by Harsimrat on 18/01/23.
//

import SwiftUI

struct CharacterDetailView: View {
   
    var characterModel:Character
    var body: some View {
        VStack {
            Image(characterModel.photo).resizable().scaledToFit()
            Text(characterModel.description).font(.headline)
            Spacer()
            
        }.padding(.all)
            .navigationBarTitle(Text(characterModel.name), displayMode: .inline)
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(characterModel: Character(CharacterId: 23, name: "", photo:"", description: ""))
    }
}
