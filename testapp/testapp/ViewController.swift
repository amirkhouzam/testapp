//
//  ViewController.swift
//  testapp
//
//  Created by Amirkhouzam on 28/08/2022.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class ViewController: UIViewController {
let login = FBLoginButton()
    let manager = LoginManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        manager.logOut()
    }
    @IBAction func loginbutton(_ sender: UIButton) {
        
        manager.logIn(permissions: ["email"], from: self) { result, err in
            if err != nil {
                print(err?.localizedDescription)
            }else{
                print(result?.token)
            }
        }
        
    }
    

}

