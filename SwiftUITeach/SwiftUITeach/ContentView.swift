//
//  ContentView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 9.12.21.
//

import SwiftUI

class Store: ObservableObject {
    @Published var state = 1
}

struct ContentView: View {
    let screenSize = UIScreen.main.bounds
    @State var isNext = true
    var detailView = DetailView()
    
    var body: some View {
        if isNext {
            detailView
        } else {
            ZStack(alignment: .top) {
                VStack {
                    Color.green
                        .ignoresSafeArea()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: screenSize.height / 2, trailing: 0))
                
                VStack {
                    Text(TextString.mainViewTitle)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Text(TextString.mainViewSubtitle)
                        .font(.none)
                        .multilineTextAlignment(.center)
                }
                .padding(EdgeInsets(top: screenSize.height / 2.0, leading: 0, bottom: 0, trailing: 0))
                
                Button(action: action) {
                    Text("Get started")
                        .font(.system(size: 16))
                        .frame(maxWidth: screenSize.width / 2, maxHeight: 60)
                        .background(Color.orange)
                        .multilineTextAlignment(.center)
                        .cornerRadius(40)
                        .padding(EdgeInsets(top: screenSize.height / 1.3, leading: 0, bottom: 0, trailing: 0))
                }
            }
        }
    }
    
    func action() {
        isNext = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
