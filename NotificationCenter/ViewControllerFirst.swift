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
        
        NotificationCenter.default.post(name:NSNotification.Name(rawValue: "NotifyJobRx"), object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
