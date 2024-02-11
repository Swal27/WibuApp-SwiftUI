//
//  ActivityView.swift
//  WibuApp
//
//  Created by Kukuh on 11/02/24.
//

import Foundation
import SwiftUI

struct ActivityView: UIViewControllerRepresentable{
    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
