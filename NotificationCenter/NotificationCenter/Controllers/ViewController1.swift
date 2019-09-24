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

        //Recieve notification
    //  NotificationCenter.default.addObserver(self, selector: #selector(self.print1Method(notification:)), name: Notification.Name("callMethodPrint1FromVC1"), object: nil)
        NotificationCenter.default.removeObserver(self, name: Notification.Name("V1-To-callMethodPrint1FromVC2"), object: nil)
    }
    
    //Handle/implmenent notification method
    @objc func print1Method(notification: Notification) {
        
        print("Notification came from VC 2")
    }
    @objc func print2Method(notification: Notification) {
        
        print("Notification came from VC 2")
    }
    //Move to next VC
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        NotificationCenter.default.post(name: Notification.Name("V1-To-callMethodPrint1FromVC2"), object: nil)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "ViewController2Id") as? ViewController2
        navigationController?.pushViewController(vc2!, animated: true)
        
    }
    
    // Remove notification object
    deinit {
      
        //NotificationCenter.default.removeObserver(self, name: Notification.Name("callMethodPrint2FromVC1"), object: nil)
    }
    
}
