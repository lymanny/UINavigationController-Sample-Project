//
//  ContainerView1.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 21/9/22.
//

import UIKit

class ContainerView1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPushToVC3(_ sender: Any) {
        pushNavigation(storyboard: "TabBarVCWithCVSB", identifier: "TabBarVCWithCVVC3")
    }
    
    @IBAction func btnPresentToVC3(_ sender: Any) {
        presentVC(storyboard: "TabBarVCWithCVSB", identifier: "TabBarVCWithCVVC3")
    }
    
}
