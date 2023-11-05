//
//  AnimatinView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 4.01.22.
//

import SwiftUI

struct AnimatinView: View {
    @Namespace var namespace
    @State var show = false
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            if !show {
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    VStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle.weight(.bold))
                            .matchedGeometryEffect(id: "1", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("SwiftUI")
                            .font(.footnote)
                            .matchedGeometryEffect(id: "3", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Not intersting")
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "4", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .blur(radius: 30)
                            .matchedGeometryEffect(id: "7", in: namespace)
                    )
                }
                .foregroundStyle(.green)
                //                .background(
                //                    Image("card")
                //                        .resizable()
                //                        .aspectRatio(contentMode: .fill)
                //                        .matchedGeometryEffect(id: "6", in: namespace)
                //                )
                .background(
                    Image("priroda")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "5", in: namespace)
                )
                .mask (
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .matchedGeometryEffect(id: "6", in: namespace)
                )
                .padding(20)
                .frame(height: 300)
                
            } else {
                ScrollView {
                    VStack {
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                  
                   
                    .frame(height: 500)
                    .foregroundStyle(.white)
                    //                .background(
                    //                    Image("card")
                    //                        .resizable()
                    //                        .aspectRatio(contentMode: .fill)
                    //                        .matchedGeometryEffect(id: "6", in: namespace)
                    //                )
                    .background(
                        Image("priroda")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "5", in: namespace)
                    )
                    .mask (
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "6", in: namespace)
                    )
                    .overlay (
                        VStack(alignment: .leading, spacing: 12) {
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                                .font(.largeTitle.weight(.bold))
                                .matchedGeometryEffect(id: "1", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("SwiftUI")
                                .font(.footnote)
                                .matchedGeometryEffect(id: "3", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Not intersting")
                                .font(.footnote.weight(.semibold))
                                .matchedGeometryEffect(id: "4", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Divider()
                            HStack {
                                Image("face")
                                    .resizable()
                                    .frame(width: 26, height: 26, alignment: .trailing)
                                    .cornerRadius(10)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                Text(TextString.fullName)
                                    .font(.footnote)
                            }
                        }
                            .padding(20)
                            .background(
                                Rectangle()
                                    .fill(.ultraThinMaterial)
                                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                    .matchedGeometryEffect(id: "7", in: namespace)
                            )
                            .offset(y: 250)
                            .padding(20)
                    )
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
}

struct AnimatinView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatinView()
    }
}
