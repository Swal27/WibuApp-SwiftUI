//
//  WaifuAPIServices.swift
//  WibuApp
//
//  Created by Kukuh on 11/02/24.
//

import Foundation

class WaifuAPIServices{
    static let shared = WaifuAPIServices()
    
    func loadWaifus() async throws -> [Waifu]{
        //1: validasi URL
        guard let photosURL = URL(string: "https://jsonplaceholder.typicode.com/photos") else {
            throw URLError(.badURL)
        }
        
        //2: Datas
        let (data, _) = try await URLSession.shared.data(from: photosURL)
        
        //3: Decode Data
        let waifus = try JSONDecoder().decode([Waifu].self, from: data)
        return waifus
    }
}

