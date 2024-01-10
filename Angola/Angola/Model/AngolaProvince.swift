//
//  AngolaProvince.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct AngolaProvince: Identifiable, Codable {
    let id, nome, fundada, capital: String
    let area, prefixoTelefonico: String
    let siteGovernoProvincial: String
    let municipios: [String]

    enum CodingKeys: String, CodingKey {
        case id, nome, fundada, capital, area
        case prefixoTelefonico = "prefixo_telefonico"
        case siteGovernoProvincial = "site_governo_provincial"
        case municipios
    }
}
