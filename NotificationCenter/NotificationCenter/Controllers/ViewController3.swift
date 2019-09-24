//
//  ViewController3.swift
//  NotificationCenter
//
//  Created by mallikarjun on 20/09/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Recieve notification
       
    }
    

    @objc func print1Method(notification: Notification) {
        
        print("Notification came from VC 2")
    }
   
    @IBAction func backToVC1(_ sender: Any) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController1Id") as? ViewController1
        navigationController?.pushViewController(vc2!, animated: true)
    }
    
    
    @IBAction func backToVC2(_ sender: Any) {
        
       
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController2Id") as? ViewController2
        navigationController?.pushViewController(vc2!, animated: true)
        
    }
    
    //Remolve notification object
    deinit {
       
        
    }
}
