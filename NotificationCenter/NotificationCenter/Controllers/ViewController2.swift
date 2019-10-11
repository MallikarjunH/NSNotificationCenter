//
//  ViewController2.swift
//  NotificationCenter
//
//  Created by mallikarjun on 20/09/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func someMethod(){
         print("Test Test")
    }
    
    @IBAction func nextToVC2(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController3Id") as? ViewController3
        navigationController?.pushViewController(vc2!, animated: true)
    }
    
     //Remove notification object
   /* deinit {
    
    } */
    
}
