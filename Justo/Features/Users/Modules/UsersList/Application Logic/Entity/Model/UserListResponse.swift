//
//  User.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import Foundation

struct UserListResponse: Codable {
    let results: [User]
    let info: Info
}
