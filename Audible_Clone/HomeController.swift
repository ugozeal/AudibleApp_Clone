//
//  HomeController.swift
//  Audible_Clone
//
//  Created by David U. Okonkwo on 9/26/20.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "You are Logged in"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    @objc func handleSignOut(){
        UserDefaults.standard.setIsLoggedIn(value: false)
        let loginController = LogInController()
        present(loginController, animated: true, completion: nil)
    }
    
}

