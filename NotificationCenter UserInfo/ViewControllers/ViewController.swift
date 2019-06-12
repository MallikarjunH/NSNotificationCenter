//
//  ViewController.swift
//  NotificationCenter UserInfo
//
//  Created by mallikarjun on 10/06/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
    }
    

    @IBAction func moveToNextVCAction(_ sender: Any) {
        
        print("Clicked on Button")

        let sampleDictValue = ["one": 1, "two": 2, "three": 3]
        
        NotificationCenter.default.post(name: Notification.Name("reload"), object: nil)
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "TestNotification"), object: nil, userInfo: ["sampleDict" : sampleDictValue])
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "vc2") as! ViewController2
        navigationController?.pushViewController(nextVC, animated: true)
        

    }
    
    
    
}

