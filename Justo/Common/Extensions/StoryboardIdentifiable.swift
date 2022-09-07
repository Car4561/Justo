//
//  StoryboardIdentifiable.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
}
