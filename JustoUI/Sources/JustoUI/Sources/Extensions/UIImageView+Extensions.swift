//
//  File.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit

extension UIImageView {
    
    public func loadImage(url: String?){
        DispatchQueue.global().async {
            guard let urlString = url else { return }
            if let url = URL(string: urlString), let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
        }
    }
    
    public func roundedImage() {
        self.layer.cornerRadius = (self.frame.size.width) / 2;
    }
}
