//
//  StarCardDTO.swift
//  AC_StartWars_Swift6ConTesting
//
//  Created by Carlos Company on 28/10/24.
//

import Foundation

struct StarCardDTO: Codable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca : String
    let afiliacion : String
    let habilidades : String
    let armas: String
    let imagen: String
}

extension StarCardDTO {
    var toCard: StarCard {
        StarCard(
            id: self.id,
            nombre: self.nombre,
            raza: self.raza,
            descripcion: self.descripcion,
            planetaOrigen: self.planetaOrigen,
            epoca: self.epoca,
            afiliacion: self.afiliacion.components(separatedBy: ", ").map(\.capitalized),
            habilidades: self.habilidades.components(separatedBy: ", ").map(\.capitalized),
            armas: self.armas.components(separatedBy: ", ").map(\.capitalized),
            imagen: self.imagen
        )
    }
}
