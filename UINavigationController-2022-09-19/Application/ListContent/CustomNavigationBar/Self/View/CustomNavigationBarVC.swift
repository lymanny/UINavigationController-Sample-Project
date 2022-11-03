//
//  CustomNavigationBarVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 22/9/22.
//

import UIKit

class CustomNavigationBarVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnNavigationBarWithStatusBarClick(_ sender: Any) {
        presentVC(storyboard: "NavigationBarWithStatusBarSB", identifier: "NavigationBarWithStatusBarVC")
        
    }
    
    @IBAction func btnNavigationBarItemClick(_ sender: Any) {
        presentVC(storyboard: "NavigationBarItemSB", identifier: "NavigationBarItemVC")
        
    }
    
    @IBAction func btnLargeTitleNavigationClick(_ sender: Any) {
        presentVC(storyboard: "CustomNavigationSB", identifier: "CustomNavigationVC")
        
    }
}
