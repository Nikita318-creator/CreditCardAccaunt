//
//  PaymentView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 21.12.21.
//

import SwiftUI

struct PaymentView: View {
    @State private var isEditing = false
    @State var products = DetailViewModel().products
    
    @State var text: String = ""
    
    let screenSize = UIScreen.main.bounds
    var detailViewModel = DetailViewModel()
    
    var body: some View {
        ZStack {
            VStack{
                ZStack {
                    Color.init(UIColor(red: 0.008, green: 0.412, blue: 0.298, alpha: 1).cgColor).ignoresSafeArea()
                    VStack {
                    Text("Платежи")
                        .font(.system(size: 45, weight: .bold, design: .default))
                    HStack {
                        TextField("Search ...", text: $text)
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal, 10)
                            .onTapGesture {
                                self.isEditing = true
                            }
                        
                        if !text.isEmpty, !isEditing {
                            Button(action: {
                                products = DetailViewModel().products
                                text = ""
                                isEditing = true
                            }) {
                                Text("Сlear")
                            }
                            .padding(.trailing, 10)
                            .transition(.move(edge: .trailing))
                        }
                        
                        if isEditing {
                            Button(action: {
                                var ind = 0
                                for i in 0..<products.count {
                                    if !products[ind].name.contains(text) {
                                        products.remove(at: ind)
                                        ind-=1
                                    }
                                    ind+=1
                                }
                                self.isEditing = false
                                
                            }) {
                                Text("Поиск")
                            }
                            .padding(.trailing, 10)
                            .transition(.move(edge: .trailing))
                        }
                    }
                    }
                    .padding()
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: screenSize.height / 1.4, trailing: 0))
                
            }
            VStack {
                
                
               
                
                Text("Сегодня")
                    .font(.title)
                    .padding(EdgeInsets(top: 0, leading: -screenSize.width / 2.5, bottom: 0, trailing: 0))
                
                ForEach(products, id: \.id) { product in
                    VStack {
                        ProductView(product: product)
                        HStack {
                            Text(" shop ")
                                .background(Color.gray)
                                .cornerRadius(15)
                                .padding()
                            Text(" shop ")
                                .background(Color.gray)
                                .cornerRadius(15)
                            Text(" shop  ")
                                .background(Color.gray)
                                .cornerRadius(15)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
