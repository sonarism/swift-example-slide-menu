//
//  SettingsController.swift
//  SlideMenuTest
//
//  Created by Usama Minegishi on 2019/06/07.
//  Copyright © 2019 Usama Minegishi. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Handlers
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    func configureUI() {
        view.backgroundColor = .white

        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(handleDismiss))
        navigationItem.leftBarButtonItem?.tintColor = .white
        
        // navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage().withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
}
