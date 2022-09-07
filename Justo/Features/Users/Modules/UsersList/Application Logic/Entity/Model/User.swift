//
//  User.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

struct User: Codable {
    let name: Name
    let email: String
    let phone: String
    let picture: Picture
}

struct Name: Codable {
    let title, first, last: String
}

struct Picture: Codable {
    let large, medium, thumbnail: String
}
