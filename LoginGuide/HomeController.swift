//
//  HomeController.swift
//  LoginGuide
//
//  Created by Lin Cheng on 30/03/2017.
//  Copyright © 2017 Lin Cheng. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're logged in"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        
        let imageView = UIImageView(image: UIImage(named: "3"))
        view.addSubview(imageView)
        
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
    
    func handleSignOut() {
        UserDefaults.standard.setIsLoggedIn(vaule: false)
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}
