//
//  yudukiViewController.swift
//  chairmansApp
//
//  Created by 中坪久人 on 2018/11/11.
//  Copyright © 2018 中坪久人. All rights reserved.
//

import UIKit

class yudukiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fromYudukiToPlayer" {
            let playerVC = segue.destination as! YudukiPlayerController
            
            playerVC.givenUrl = "https://www.youtube.com/embed/2m1gcHqfqg0?rel=0"
        }
    }

}
