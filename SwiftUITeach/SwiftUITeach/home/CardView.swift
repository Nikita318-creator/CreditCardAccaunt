//
//  CardView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 21.12.21.
//

import SwiftUI

struct CardView: View {
    let sum = "$64,234.20"
    let number = "*3546"
    let screenSize = UIScreen.main.bounds

    var body: some View {
        VStack {
            HStack {
                Text("Mastercard")
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Image("Creditcardlogos").resizable()
                    .frame(width: screenSize.width / 7, height: screenSize.width / 7, alignment: .trailing)
                    .padding()
            }
            Spacer()
            HStack {
                Text(sum)
                    .font(.system(size: 28))
                    .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 125))
            HStack {
                Image("face").resizable()
                    .frame(width: screenSize.width / 10, height: screenSize.width / 10, alignment: .trailing)
                    .padding()
                VStack{
                    Text(TextString.fullName)
                }
                Spacer()
                Text(number)
                    .padding()
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.init(UIColor(red: 0.717, green: 0.717, blue: 0.717, alpha: 0.28).cgColor)))
        )
        .frame(width: screenSize.width - 80)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
