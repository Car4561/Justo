//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit

fileprivate var justoActivityIndicatorView: UIActivityIndicatorView!

public protocol JustoActivityIndicatorPresentable {
    
    func showJustoActivityIndicatorView()
    func hideJustoActivityIndicatorView()
}

public extension JustoActivityIndicatorPresentable where Self: UIViewController {
    
    func showJustoActivityIndicatorView() {
        justoActivityIndicatorView = UIActivityIndicatorView(style: .large)
        justoActivityIndicatorView.center = self.view.center
        view.addSubview(justoActivityIndicatorView)
        justoActivityIndicatorView.startAnimating()
    }
    
    func hideJustoActivityIndicatorView() {
        justoActivityIndicatorView.removeFromSuperview()
    }
}
