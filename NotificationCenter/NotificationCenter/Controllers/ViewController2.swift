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
        //Recieve notification
        NotificationCenter.default.addObserver(self, selector: #selector(self.print1Method(notification:)), name: Notification.Name("V1-To-callMethodPrint1FromVC2"), object: nil)
    }
    
    @objc func print1Method(notification: Notification) {
        
        print("Notification came from VC 1")
    }
    
    @objc func print2Method(notification: Notification) {
        
        print("Notification came from VC 3")
    }
    
    
    @IBAction func backToVC1(_ sender: Any) {
        //Post Notification
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController1Id") as? ViewController1
        navigationController?.pushViewController(vc2!, animated: true)
    }
    
    
    @IBAction func nextToVC2(_ sender: Any) {
         //Post Notification
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController3Id") as? ViewController3
        navigationController?.pushViewController(vc2!, animated: true)
    }
    
     //Remove notification object
    deinit {
       
        NotificationCenter.default.removeObserver(self, name: Notification.Name("V1-To-callMethodPrint1FromVC2"), object: nil)
    }
    
}
