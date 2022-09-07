//
//  UsersListTableViewCell.swift
//  Justo
//
//  Created by Carlos Alfredo Llerena Huayta on 7/09/22.
//

import UIKit
import JustoNetworking
import JustoUI

class UsersListTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.backgroundColor = JustoColors.whiteBackground
        }
    }
 
    @IBOutlet weak var userImageView: UIImageView!{
        didSet{
            userImageView.roundedImage()
        }
    }

    @IBOutlet weak var fullnamelabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!

    func configure(with user: User) {
        userImageView.loadImage(url: user.picture.thumbnail)
        fullnamelabel.text = "\(user.name.first) \(user.name.last)"
        emailLabel.text = user.email
        phoneNumberLabel.text = user.phone
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
