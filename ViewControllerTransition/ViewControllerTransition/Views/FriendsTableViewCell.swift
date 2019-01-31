//
//  FriendsTableViewCell.swift
//  ViewControllerTransition
//
//  Created by Nelson Gonzalez on 1/31/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var friendImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var friends: Friends? {
        didSet {
            updateViews()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateViews() {
        guard let friends = friends else {return}
        friendImageView.image = UIImage(named: friends.imageName)
        nameLabel.text = friends.name
    }

    
}
