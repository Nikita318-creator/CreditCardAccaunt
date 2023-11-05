//
//  ProfileCellView.swift
//  SwiftUITeach
//
//  Created by никита уваров on 28.12.21.
//

import SwiftUI

struct ProfileCellView: View {
    let profileCell: ProfileCell
    
    init(profileCell: ProfileCell) {
        self.profileCell = profileCell
    }
    
    var body: some View {
        Text(profileCell.title)
    }
}

struct ProfileCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCellView(profileCell: ProfileCell(title: "title", icon: ""))
    }
}
