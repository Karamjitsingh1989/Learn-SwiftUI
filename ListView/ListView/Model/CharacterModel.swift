//
//  CharacterModel.swift
//  ListView
//
//  Created by Harsimrat on 18/01/23.
//

import Foundation

struct Character : Decodable
{
    let CharacterId : Int
    let name, photo, description: String
}

struct Characters : Decodable
{
    let Id: Int
    let name: String
    let Characters: [Character]
}



