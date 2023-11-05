//
//  HomeView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 20.12.21.
//

import SwiftUI

struct HomeView: View {
    let screenSize = UIScreen.main.bounds
    let detailViewModel = DetailViewModel()
    
    var seeAllHandler: ((Int) -> Void)?

    init() {}
    init(seeAllHandler : @escaping (Int) -> Void) {
        self.seeAllHandler = seeAllHandler
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.init(UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1).cgColor).ignoresSafeArea()
            
            VStack{
                Color.init(UIColor(red: 0.008, green: 0.412, blue: 0.298, alpha: 1).cgColor).ignoresSafeArea()
                // MARK: - Image
//                Image("priroda").resizable()
//                    .ignoresSafeArea()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: screenSize.height / 2.0, trailing: 0))
            
            HStack {
                Image("face").resizable()
                    .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                    .padding()
                VStack{
                    Text(TextString.name + ",")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 55))
                        .foregroundColor(.gray)
                    Text(TextString.fullName)
                        .foregroundColor(.white)
                }
                Spacer()
                ZStack {
                    Circle().fill(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 0.25).cgColor))
                        .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                    Image("ring").resizable()
                        .frame(width: screenSize.width / 14, height: screenSize.width / 14, alignment: .leading)
                        .padding()
                }
            }
//            .padding(EdgeInsets(top: 0, leading: 0, bottom: screenSize.height / 3, trailing: 0))

            HStack {
                Spacer()
                Text("My Cards")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                Spacer()
                Spacer()
                ZStack {
                    Rectangle().fill(Color(UIColor(red: 1, green: 1, blue: 1, alpha: 0.25).cgColor))
                        .frame(width: screenSize.width / 3.5, height: screenSize.width / 12, alignment: .trailing)
                        .cornerRadius(50)
                        .opacity(0.3)
                    Text("+ Add card")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .onTapGesture {
                            print("Add new card")
                        }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                Spacer()
            }
            .padding(EdgeInsets(top: screenSize.height / 10, leading: 0, bottom: screenSize.height / 1.7, trailing: 0))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    CardView()
                        .padding(EdgeInsets(top: screenSize.height / 5.5, leading: 40, bottom: screenSize.height / 2.5, trailing: 0))
                    CardView()
                        .padding(EdgeInsets(top: screenSize.height / 5.5, leading: 40, bottom: screenSize.height / 2.5, trailing: 0))
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
           
                
            
            
            ScrollView(.vertical, showsIndicators: true) {
                HStack {
                    Spacer()
                    VStack {
                        ZStack {
                            Circle().fill(Color(UIColor(red: 0.996, green: 0.792, blue: 0.467, alpha: 0.73).cgColor))
                                .frame(width: screenSize.width / 6, height: screenSize.width / 6, alignment: .trailing)
                            Image("request").resizable()
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                                .onTapGesture {
                                    print("Transfer")
                                }
                        }
                        Text("Transfer")
                    }
                    Spacer()
                    VStack {
                        ZStack {
                            Circle().fill(Color.white)
                                .frame(width: screenSize.width / 6, height: screenSize.width / 6, alignment: .trailing)
                            Image("transfer").resizable()
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                                .onTapGesture {
                                    print("REQUEST")
                                }
                        }
                        Text("REQUEST")
                    }
                    Spacer()
                    VStack {
                        ZStack {
                            Circle().fill(Color.white)
                                .frame(width: screenSize.width / 6, height: screenSize.width / 6, alignment: .trailing)
                            Image("more").resizable()
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                                .onTapGesture {
                                    print("more")
                                }
                        }
                        Text("MORE")
                    }
                    Spacer()
                }
                
                HStack {
                    Text("Last Activity")
                        .padding(EdgeInsets(top: 0, leading: screenSize.width - 400, bottom: 0, trailing: 0))
                        .font(.system(size: 18))
                    Text("See All")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(top: 0, leading: screenSize.width - 300, bottom: 0, trailing: 0))
                        .onTapGesture {
                            seeAllHandler?(1)
                            print("See All")
                        }
                }
                .padding()
                
                VStack {
                    ForEach(detailViewModel.products, id: \.id) { product in
                        ZStack {
                            Rectangle().fill(Color.white)
                                .frame(width: screenSize.width / 1.3, height: screenSize.width / 4, alignment: .trailing)
                                .cornerRadius(20)
                            ProductView(product: product)
                                .onTapGesture {
                                    print("buy product")
                                }
                        }
                        .padding(5)
                    }
                }
            }
            .padding(EdgeInsets(top: screenSize.height / 2.2, leading: 0, bottom: 0, trailing: 0))
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
