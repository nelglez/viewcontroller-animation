//
//  NavigationControllerDelegate.swift
//  ViewControllerTransition
//
//  Created by Nelson Gonzalez on 1/31/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    var sourceCell: UITableViewCell?
    //In your NavigationControllerDelegate's navigationController(_ navigationController:, animationControllerFor:, from:, to:) method, create and configure an Animator object, and return it. The animator will need to have its source and destination imageView and label properties set. Note: You must keep a strong reference to the animator object in your navigation controller delegate. Use a property to hold it instead of creating a temporary instance and referencing it solely in this method.
    private let animator = ImageTransitionAnimator()
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return animator
    }
  
}
