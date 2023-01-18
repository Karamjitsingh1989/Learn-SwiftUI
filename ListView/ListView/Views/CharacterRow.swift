//
//  CharacterRow.swift
//  ListView
//
//  Created by Harsimrat on 18/01/23.
//

import SwiftUI

struct CharacterRow: View {
    
    var characterModel: Character
    var body: some View {
       
        HStack {
            Image(characterModel.photo).resizable().frame(width: 50, height: 50, alignment: .center)
            Text(characterModel.name)
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(characterModel: Character(CharacterId: 23, name: "", photo:"", description: ""))
    }
}
