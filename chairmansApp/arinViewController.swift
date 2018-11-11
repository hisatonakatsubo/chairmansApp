//
//  arinViewController.swift
//  chairmansApp
//
//  Created by 中坪久人 on 2018/11/11.
//  Copyright © 2018 中坪久人. All rights reserved.
//

import UIKit

class arinViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let playerVC = segue.destination as! PlayerViewController
            playerVC.givenUrl = "https://www.youtube.com/watch?v=cEZOe7C2NY0"
        }
    
}


