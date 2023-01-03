//
//  Model.swift
//  FurnitureStrore
//
//  Created by Darya Zhitova on 26.07.2022.
//

import Foundation
import SwiftUI



struct Model: Identifiable {
    
    var id = UUID()
    
    var title: String
    var price: String
    var imageName: String
    
    
    static let chairs = [
        Model(title: "Begie chair", price: "₽7000", imageName: "BegieChair"),
        Model(title: "Gray chair", price: "₽15000", imageName: "GrayChair"),
        Model(title: "Padded Stool", price: "₽6800", imageName: "PaddedStool")
    ]


    static let sofas = [
        Model(title: "Yellow sofa", price: "₽10500", imageName: "YellowSofa"),
        Model(title: "Black sofa", price: "₽2500", imageName: "BlackSofa"),
        Model(title: "Emerald Sofa", price: "₽10500", imageName: "EmeraldSofa")
    ]

    
}
