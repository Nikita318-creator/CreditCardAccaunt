//
//  ProductView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 16.12.21.
//

import SwiftUI

struct ProductView: View {
    let screenSize = UIScreen.main.bounds
    let product: Product

    init(product: Product) {
        self.product = product
    }
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Circle().fill(product.color)
                    .frame(width: screenSize.width / 8, height: screenSize.width / 8, alignment: .trailing)
                Image(product.imageName).resizable()
                    .frame(width: screenSize.width / 13, height: screenSize.width / 13, alignment: .trailing)
            }
            VStack {
                Text(product.name)
                    .font(.headline)
                Text(product.date)
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack {
                Text("$" + String(product.price))
                    .font(.headline)
                Text(product.discount)
                    .foregroundColor(.red)
            }
            Spacer()
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Product(name: "Groceris", date: "12.03.2021", price: 24.5, imageName: "Groceris", discount: "25%", color: Color(UIColor(red: 0.933, green: 0.988, blue: 0.953, alpha: 0.73).cgColor)))
    }
}
