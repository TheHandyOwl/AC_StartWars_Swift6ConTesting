//
//  StarCardVM.swift
//  AC_StartWars_Swift6ConTesting
//
//  Created by Carlos Company on 29/10/24.
//

import SwiftUI

@Observable
final class StarCardVM {
    
    var cards: [StarCard]
    
    let repository: DataRepository
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            self.cards = try self.repository.getData()
        } catch {
            self.cards = []
        }
    }
}
