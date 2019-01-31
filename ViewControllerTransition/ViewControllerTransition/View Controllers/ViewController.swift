//
//  ViewController.swift
//  ViewControllerTransition
//
//  Created by Nelson Gonzalez on 1/31/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate  {
    
    @IBOutlet weak var friendsImageView: UIImageView!
    
    @IBOutlet weak var friendsNameLabel: UILabel!
    
    @IBOutlet weak var friendsDescriptionLabel: UILabel!
    
    var index: Int?
    
//    var friends: Friends? {
//        didSet {
//            updateView()
//        }
//    }
    
    var friendsController: FriendsController?

    override func viewDidLoad() {
        super.viewDidLoad()
       update()
    }
    
//    func updateView() {
//        guard isViewLoaded else { return }
//        guard let friends = friends else {return}
//        navigationItem.title = friends.name
//        friendsImageView.image = UIImage(named: friends.imageName)
//        friendsNameLabel.text = friends.name
//        friendsDescriptionLabel.text = friends.description
//
//    }
 
    func update() {
        guard let index = index else { return }
        friendsNameLabel.text = friendsController?.friends[index].name
        friendsDescriptionLabel.text = friendsController?.friends[index].description
        friendsImageView.image = UIImage(named:(friendsController?.friends[index].imageName)!)
        navigationItem.title = friendsController?.friends[index].name
    }
    
   

}

