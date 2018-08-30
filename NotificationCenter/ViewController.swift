//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Prashant G on 8/30/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(appEnterInBackground), name: Notification.Name.UIApplicationDidEnterBackground, object: nil)
        
        notificationCenter.addObserver(self, selector: #selector(appEnterInForeground), name: Notification.Name.UIApplicationDidBecomeActive, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(taskCompletedOfSecond(_:)), name: .didCompleteTask, object: nil)
        
    }

    @objc func taskCompletedOfSecond(_ notification: Notification) {
        print("task completed called - Initial VC")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @objc func appEnterInBackground() {
        print("app enters background")
    }
    
    @objc func appEnterInForeground() {
        print("app enters foreground")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: Notification.Name.UIApplicationDidEnterBackground, object: nil)
        NotificationCenter.default.removeObserver(self, name: Notification.Name.UIApplicationDidBecomeActive, object: nil)
        NotificationCenter.default.removeObserver(self, name: .didCompleteTask, object: nil)
    }

}














