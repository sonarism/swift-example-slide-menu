//
//  HomeController.swift
//  SlideMenuTest
//
//  Created by Usama Minegishi on 2019/06/07.
//  Copyright © 2019 Usama Minegishi. All rights reserved.
//
import UIKit

class HomeController: UIViewController {
    // MARK: - Proparties
    var delegate: HomeControllerDelegate?

    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigationBar()
        
    }
    
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu Test"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "open", style: .plain, target: self, action: #selector(handleMenuToggle))
        
        // In case of using image, load image into assets then IMG.withRenderingMode(.alwaysOriginal) into UIImage?
        // navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage?, style: .plain, target: self, action: #selector(handleMenuToggle))
    }

}
