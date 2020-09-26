//
//  MainNavigationController.swift
//  Audible_Clone
//
//  Created by David U. Okonkwo on 9/26/20.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn(){
            let homeController = HomeController()
            viewControllers = [homeController]
            // assume user is logged in
        }else{
            perform(#selector(showLogInController), with: nil, afterDelay: 0.01)
           
        }
    }
    fileprivate func isLoggedIn() -> Bool{
        return UserDefaults.standard.isLoggedIn()
    }
    
    @objc func showLogInController(){
        let logInController = LogInController()
        logInController.modalPresentationStyle = .fullScreen
        present(logInController, animated: true, completion: {
            // Put something here
        })
    }
    
}

