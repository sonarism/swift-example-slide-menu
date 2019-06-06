//
//  ContainerController.swift
//  SlideMenuTest
//
//  Created by Usama Minegishi on 2019/06/07.
//  Copyright © 2019 Usama Minegishi. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    // MARK: - Proparties
    var menuController: UIViewController! // Slide Menu
    var centerController: UIViewController! // Main Content
    
    var isExpanded = false // track show/hide menu
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }

    // MARK: - Handlers
    
    func configureHomeController () {
        let homeController = HomeController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configureMenuController () {
        if menuController == nil {
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu controller")
        }
    }
    
    func showMenuController(shouldExpand: Bool) {
        if shouldExpand {
            // show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 80 - self.centerController.view.frame.width
            }, completion: nil)
        } else {
            // hide menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
    
}


extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle() {
        
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        showMenuController(shouldExpand: isExpanded)
    }
    
    
}
