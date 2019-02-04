//
//  TweetDetailsViewController.swift
//  Twitter
//
//  Created by Hermain Hanif on 2/3/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetDetailsViewController: UIViewController {
    
    var tweet: NSDictionary!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(tweet["user"])

        // Do any additional setup after loading the view.
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
