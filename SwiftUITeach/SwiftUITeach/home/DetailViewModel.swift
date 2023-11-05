//
//  DetailViewModel.swift
//  SwiftUITeach
//
//  Created by никита уваров on 16.12.21.
//

import SwiftUI

struct Product:  Identifiable {
    var id = UUID() 
    let name: String
    let date: String
    var price: Double
    let imageName: String
    let discount: String
    let color: Color
}

class DetailViewModel {
    var products = [Product]()
    
    init() {
        products.append(Product(name: "Groceris", date: "12.03.2021", price: 24.5, imageName: "Groceris", discount: "25%", color: Color(UIColor(red: 0.933, green: 0.988, blue: 0.953, alpha: 0.73).cgColor)))
        products.append(Product(name: "Education", date: "16.03.2021", price: 124.5, imageName: "Education", discount: "5%", color: Color(UIColor(red: 0.929, green: 0.969, blue: 0.992, alpha: 0.73).cgColor)))
    }
}
