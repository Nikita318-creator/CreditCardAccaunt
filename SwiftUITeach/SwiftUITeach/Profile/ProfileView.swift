//
//  ProfileView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 20.12.21.
//

import SwiftUI

struct ProfileView: View {
    let screenSize = UIScreen.main.bounds
    @ObservedObject var viewModel = ProfileViewModel()
    
    init() {
//        UITableView.appearance().separatorStyle = .none
//        UITableViewCell.appearance().backgroundColor = .green
    }
    
    var body: some View {
        VStack {
        ZStack(alignment: .top) {
            VStack{
                Color.green
                    .ignoresSafeArea()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: screenSize.height / 1.6, trailing: 0))
            Text("Профиль")
                .font(.system(size: 45, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding()
            
            HStack {
                ZStack {
                    Circle().fill(Color.white)
                        .frame(width: screenSize.width / 5, height: screenSize.width / 5, alignment: .trailing)
                    Image("face").resizable()
                        .frame(width: screenSize.width / 5, height: screenSize.width / 5, alignment: .trailing)
                        .padding()
                }
                VStack{
                    Text(TextString.name + ",")
                        .font(.title)
                        .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 85))
                        .foregroundColor(.gray)
                    Text(TextString.fullName)
                        .font(.title)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding(EdgeInsets(top: screenSize.height / 14, leading: 0, bottom: 0, trailing: 0))
            
            NavigationView {
                List {
                    HStack {
                        ZStack {
                            Circle().fill(Color.green)
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                            Image(viewModel.profileCell[0].icon).resizable()
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                                .padding()
                        }
                        NavigationLink(viewModel.profileCell[0].title) {
                            // NextView()
                        }
                    }
                    .frame(height: screenSize.height / 10)
                    .font(.title)
                    
                    HStack {
                        ZStack {
                            Circle().fill(Color.green)
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                            Image(viewModel.profileCell[1].icon).resizable()
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                                .padding()
                        }
                        NavigationLink(viewModel.profileCell[1].title) {
                            // NextView()
                        }
                    }
                    .frame(height: screenSize.height / 10)
                    .font(.title)
                    
                    HStack {
                        ZStack {
                            Circle().fill(Color.green)
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                            Image(viewModel.profileCell[2].icon).resizable()
                                .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                                .padding()
                        }
                        NavigationLink(viewModel.profileCell[2].title) {
                            // NextView()
                        }
                    }
                    .frame(height: screenSize.height / 10)
                    .font(.title)
                }
            }
            .padding(EdgeInsets(top: screenSize.height / 4, leading: 0, bottom: 0, trailing: 0))
        }
            
            Button(action: tapExit) {
                Text("Выход")
                    .font(.system(size: 16))
                    .frame(maxWidth: screenSize.width / 2, maxHeight: 60)
                    .background(Color.orange)
                    .multilineTextAlignment(.center)
                    .cornerRadius(40)
            }
        }
    }
    
    func tapExit() {
        exit(0)
//        viewModel.profileCell[0] = ProfileCell(title: "change", icon: "")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
