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
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.print1Method(notification:)), name: Notification.Name("callMethodPrint1FromVC2"), object: nil)
    }
    
    
    @objc func print1Method(notification: Notification) {
        
        print("Notification came from VC 1")
    }

    
    @IBAction func backToVC1(_ sender: Any) {
        
    }
    
    
    @IBAction func nextToVC2(_ sender: Any) {
        
    }
    
}
