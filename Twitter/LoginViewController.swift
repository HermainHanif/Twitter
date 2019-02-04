//
//  LoginViewController.swift
//  Twitter
//
//  Created by Hermain Hanif on 2/1/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }
        
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let myUrl = "https://api.twitter.com/oauth/request_token"
//
        TwitterAPICaller.client?.login(url: myUrl, success: {
            //calling on API to log us in with given URL
            
            UserDefaults.standard.set(true, forKey: "userLoggedIn")
            //how we put in memory and say remember logged in
            //makes valriable and sets it to true
            // so next time logs in looks for this variable, and if there sends to home screen
            self.performSegue(withIdentifier: "loginToHome", sender: self)
            //how we perform segue after logging in, go to home
        
        }, failure: { (Error) in
            print( "Could not login!" )
            //if no work, print this
        })
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
