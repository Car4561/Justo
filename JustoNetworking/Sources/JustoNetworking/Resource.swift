//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

public protocol Resource {
    
    var resource: (method: HTTPMethod, route: String) { get }
}
