//
//  PushVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

class PushVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnGoToVC2(_ sender: Any) {
        pushNavigation(storyboard: "PushSB", identifier: "PushVC2")
    }
    
}

class PushVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnGoToVC3(_ sender: Any) {
        pushNavigation(storyboard: "PushSB", identifier: "PushVC3")
    }
    
}

class PushVC3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
