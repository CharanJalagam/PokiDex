//
//  SamplePokemon.swift
//  Dex3
//
//  Created by Charan on 26/10/24.
//

import Foundation
import CoreData

struct SamplePokemon{
    static let samplePokemon = {
        let content = PersistenceController.preview.container.viewContext

        let fetchRequest : NSFetchRequest<Pokemon> = Pokemon.fetchRequest()
        fetchRequest.fetchLimit = 1

        let results = try! content.fetch(fetchRequest)

        return results.first!
    }()
}
