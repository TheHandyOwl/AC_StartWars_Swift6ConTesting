//
//  StarCard.swift
//  AC_StartWars_Swift6ConTesting
//
//  Created by Carlos Company on 28/10/24.
//

import Foundation

struct StarCard: Identifiable, Hashable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}

extension StarCard {
    static let test = StarCard(
        id: 6629,
        nombre: "Luke Skywalker",
        raza: "Humano",
        descripcion: "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala",
        planetaOrigen: "Tatooine",
        epoca: "Era del Imperio Galáctico",
        afiliacion: ["Alianza Rebelde", "Nueva República"],
        habilidades: ["Uso de la Fuerza", "combate con sable de luz", "pilotaje"],
        armas: ["Sable de luz"],
        imagen: "lukeskywalker"
    )
}
