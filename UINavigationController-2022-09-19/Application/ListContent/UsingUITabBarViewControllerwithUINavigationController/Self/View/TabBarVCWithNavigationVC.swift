//
//  TabBarVCWithNavigationVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 21/9/22.
//

import UIKit

class TabBarVCWithNavigationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnUITabBarVCWithUIViewControllerClick(_ sender: Any) {
        pushNavigation(storyboard: "TabBarVCWithUIVCSB", identifier: "TabBarVCWithUIVC")
    }
    
    @IBAction func btnUITabBarVCWithContainerViewClick(_ sender: Any) {
        pushNavigation(storyboard: "TabBarVCWithCVSB", identifier: "TabBarVCWithCVVC")
    }
    
}
