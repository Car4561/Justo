//
//  UsersResource.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import JustoNetworking

enum UsersResource: Resource {

    case users

    var resource: (method: HTTPMethod, route: String) {
        switch self {
        case .users:
            return (.get, "?results=20&inc=name,email,phone,picture")
        }
    }
}
