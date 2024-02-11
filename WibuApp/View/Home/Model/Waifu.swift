//
//  Waifu.swift
//  WibuApp
//
//  Created by Kukuh on 11/02/24.
//

import Foundation

struct Waifu: Identifiable, Decodable{
    var id = UUID()
    let image: String
    let animeTitle: String
    let waifuName: String
}
