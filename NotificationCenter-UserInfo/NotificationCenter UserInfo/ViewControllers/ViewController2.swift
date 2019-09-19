//
//  ViewController2.swift
//  NotificationCenter UserInfo
//
//  Created by mallikarjun on 10/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var sampleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     //NotificationCenter.default.removeObserver(self, name: Notification.Name("TestNotification"), object: nil)
      NotificationCenter.default.addObserver(forName:NSNotification.Name(rawValue: "TestNotification"), object:nil, queue:nil, using:catchNotification)
       
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification(notification:)), name: Notification.Name("reload"), object: nil)
     }

    
    func catchNotification(notification:Notification) -> Void {
        guard let name = notification.userInfo!["sampleDict"] else {
            return
        }
    
        print("Name is: \(name)")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: Notification.Name("TestNotification"), object: nil)
    }

    
    @objc func methodOfReceivedNotification(notification: Notification) {
        
        anotherMethod()
    }
    
    func anotherMethod(){
        
        print("Mallikarjun Hanagandi")
    }


}
