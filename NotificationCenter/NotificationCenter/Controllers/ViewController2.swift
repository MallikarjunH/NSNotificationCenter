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
        //Recieve notification
        NotificationCenter.default.addObserver(self, selector: #selector(self.print1Method(notification:)), name: Notification.Name("callMethodPrint1FromVC2"), object: nil)
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    @objc func print1Method(notification: Notification) {
        
        print("Notification came from VC 1")
    }
    
    func someMethod(){
         print("Test Test")
    }
    
    @IBAction func backToVC1(_ sender: Any) {
        //Post Notification
    
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func nextToVC2(_ sender: Any) {
         //Post Notification
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController3Id") as? ViewController3
        navigationController?.pushViewController(vc2!, animated: true)
    }
    
     //Remove notification object
    deinit {
       
        NotificationCenter.default.removeObserver(self, name: Notification.Name("callMethodPrint1FromVC2"), object: nil)
    }
    
}
