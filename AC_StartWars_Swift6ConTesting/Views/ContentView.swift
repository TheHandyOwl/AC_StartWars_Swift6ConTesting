//
//  ContentView.swift
//  AC_StartWars_Swift6ConTesting
//
//  Created by Carlos Company on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var vm = StarCardVM()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.cards) { card in
                    StarCardView(card: card)
                }
            }
            .navigationTitle("Star Wars")
        }
    }
}

#Preview {
    ContentView(vm: StarCardVM(repository: RepositoryTest()))
}
