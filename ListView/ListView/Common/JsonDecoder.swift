//
//  JsonDecoder.swift
//  ListView
//
//  Created by Harsimrat on 18/01/23.
//

import Foundation

struct JsonDecoder
{
    static func decodeLocalJsonFile<T:Decodable>(fileName: String) -> [T]? {
        let jsonFile = Bundle.main.path(forResource:fileName, ofType: "json")
        let responseData = try! Data(contentsOf: URL(fileURLWithPath: jsonFile!), options: .alwaysMapped)
        return try! JSONDecoder().decode([T].self, from: responseData)
    }
}
