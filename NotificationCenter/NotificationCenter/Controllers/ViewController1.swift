//
//  ViewController1.swift
//  NotificationCenter
//
//  Created by mallikarjun on 20/09/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    //Move to next VC
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController2Id") as? ViewController2
        vc2!.someMethod()
        navigationController?.pushViewController(vc2!, animated: true)
        
    }
    
}
