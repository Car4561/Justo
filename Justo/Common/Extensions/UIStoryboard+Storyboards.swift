//
//  UIStoryboard+Storyboards.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit

extension UIStoryboard {

    enum Storyboard: String {

        case users
        case mainNavigation

        var filename: String {
            let firstLetter = rawValue.prefix(1)
            let camelCaseStoryboardName = firstLetter.uppercased() + rawValue.suffix(rawValue.count - 1)
            return camelCaseStoryboardName
        }
    }
    
    // MARK: - Class Functions
 
    static func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        UIStoryboard(name: storyboard.filename, bundle: bundle)
    }
    
    static func instantiateInitialViewController(of storyboard: Storyboard, bundle: Bundle? = nil) -> UIViewController {
        let storyBoard = UIStoryboard.storyboard(storyboard)
        let viewController = storyBoard.instantiateInitialViewController()
        
        return viewController!
    }
}
