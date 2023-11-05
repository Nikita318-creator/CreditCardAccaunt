//
//  ProfileViewModel.swift
//  SwiftUITeach
//
//  Created by никита уваров on 28.12.21.
//

import Foundation

struct ProfileCell {
    let title: String
    let icon: String
}

class ProfileViewModel: ObservableObject {
    @Published var profileCell = [ProfileCell]()
    
    init() {
        profileCell.append(ProfileCell(title: "Сменить фон", icon: ""))
        profileCell.append(ProfileCell(title: "Диаграмма расходов", icon: ""))
        profileCell.append(ProfileCell(title: "Настройки", icon: ""))
    }
}
