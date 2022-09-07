//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit

public protocol NavigationBarStyle {
    
    func primaryStyle()
}

public extension NavigationBarStyle where Self: UIViewController {

    func primaryStyle() {
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = JustoColors.blue
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : JustoColors.white]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.tintColor = JustoColors.white
        navigationItem.backButtonTitle = ""
    }
}
