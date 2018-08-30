//
//  ViewControllerSecond.swift
//  NotificationCenter
//
//  Created by Prashant G on 8/30/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let didCompleteTask = Notification.Name("didCompleteTask")
}

class ViewControllerSecond: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(taskCompleted(_:)), name: .didCompleteTask, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.rxUpdateForJob), name: NSNotification.Name(rawValue: "NotifyJobRx"), object: nil)
        
    }
    
    @objc func taskCompleted(_ notification: Notification) {
        print("task completed called")
    }
    
    @objc func rxUpdateForJob(_ notification: Notification) {
        print("rxupdate for job called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "NotifyJobRx"), object: nil)
        NotificationCenter.default.removeObserver(self, name: .didCompleteTask, object: nil)
    }
    

}








