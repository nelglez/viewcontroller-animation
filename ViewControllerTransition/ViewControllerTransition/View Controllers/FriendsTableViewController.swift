//
//  FriendsTableViewController.swift
//  ViewControllerTransition
//
//  Created by Nelson Gonzalez on 1/31/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController, UIViewControllerTransitioningDelegate {
    
    let navigationControllerDelegate = NavigationControllerDelegate()
    var friendsController = FriendsController()
    
    var friendNameLabel: UILabel?
    var friendLargeImage: UIImageView?
    var descriptionLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.delegate = navigationControllerDelegate
        
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friendsController.friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! FriendsTableViewCell

        let friends = friendsController.friends[indexPath.row]
        
        cell.friends = friends

        return cell
    }
   

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Implement prepare(for segue:). Get the tapped row, and use it to give the navigation controller delegate the source table view cell.
        guard
            let destinationDVC = segue.destination as? ViewController,
            let indexPath = tableView.indexPathForSelectedRow
            else { return }
        
        navigationControllerDelegate.sourceCell = tableView.cellForRow(at: indexPath) as? FriendsTableViewCell
        let index = indexPath.row
        friendNameLabel = tableView.cellForRow(at: indexPath)?.textLabel
        friendLargeImage = tableView.cellForRow(at: indexPath)?.imageView
       // let friends = friendsController.friends[index]
      //  destinationDVC.friends = friends
        destinationDVC.friendsController = friendsController
        destinationDVC.index = index
        
        
          

    }
   

}
