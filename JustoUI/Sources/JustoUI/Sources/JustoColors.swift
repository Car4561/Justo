//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit

public enum JustoColors {
    
    // MARK: - NAME
    
    enum Name {
        
        static let red = "red"
        static let blue = "blue"
        static let white = "white"
        static let whiteBackground = "whiteBackground"

    }


    // MARK: - COLORS

    public static let red = UIColor.loadColor(named: Name.red)
    public static let blue = UIColor.loadColor(named: Name.blue)
    public static let white = UIColor.loadColor(named: Name.white)
    public static let whiteBackground = UIColor.loadColor(named: Name.whiteBackground)
}
