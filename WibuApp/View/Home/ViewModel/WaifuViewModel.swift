//
//  WaifuViewModel.swift
//  WibuApp
//
//  Created by Kukuh on 11/02/24.
//

import SwiftUI

class WaifuViewModel: ObservableObject{
    @Published var waifus: [Waifu] = []
    @Published var imageToShare: UIImage?
    @Published var showOption: Bool = false
    
    func fetchWaifus() async{
        do{
            let loadedWaifus = try await WaifuAPIServices.shared.loadWaifus()
            self.waifus = loadedWaifus
        }catch{
            print(error)
        }
    }
    
    func downloadImage(from urlString: String) async -> UIImage? {
        guard let url = URL(string: urlString) else { return nil }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return UIImage(data: data)
        } catch {
            print("Error downloading image: \(error.localizedDescription)")
            return nil
        }
    }
    
    func prepareImageAndShowSheet(from urlString: String) async{
        imageToShare = await downloadImage(from: urlString)
        showOption = true
    }
}
