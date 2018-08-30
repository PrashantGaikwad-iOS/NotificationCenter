//
//  ViewControllerFirst.swift
//  NotificationCenter
//
//  Created by Prashant G on 8/30/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewControllerFirst: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default.post(name: .didCompleteTask, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

//NotificationCenter.default.post(name:NSNotification.Name(rawValue: "NotifyJobRx"), object: nil)
