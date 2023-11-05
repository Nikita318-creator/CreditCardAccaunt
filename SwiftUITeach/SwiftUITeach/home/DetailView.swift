//
//  DetailView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 14.12.21.
//

import SwiftUI

struct DetailView: View {
    let screenSize = UIScreen.main.bounds
    let detailViewModel = DetailViewModel()
    @State var activView: Int = 0
    @State var selectedTab = 0
   
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView { number in
                self.selectedTab = number
            }
                .onAppear {
                    activView = 0
                }
                .tabItem {
                    Text("")
                    let image = activView == 0 ? "home1" : "home"
                    Image(image)
                }
                .tag(0)
            PaymentView()
                .onAppear {
                    activView = 1
                }
                .tabItem {
                    let image = activView == 1 ? "payment1" : "payment"
                    Label("", image: image)
                }
                .tag(1)
            ProfileView()
                .onAppear {
                    activView = 2
                }
                .tabItem {
                    let image = activView == 2 ? "profile1" : "profile"
                    Label("", image: image)
                }
                .tag(2)
//            AnimatinView()
//                .tabItem {
//                    Label("", systemImage: "tv")
//                }
        }
    }

}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
