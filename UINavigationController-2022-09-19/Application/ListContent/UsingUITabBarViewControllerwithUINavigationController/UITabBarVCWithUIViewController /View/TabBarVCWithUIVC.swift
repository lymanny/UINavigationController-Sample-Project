//
//  TabBarWithNavigationVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 21/9/22.
//

import UIKit

class TabBarVCWithUIVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnPushToVC3Click(_ sender: Any) {
        pushNavigation(storyboard: "TabBarVCWithUIVCSB", identifier: "TabBarVCWithUIVC3")
    }
    
}

class TabBarVCWithUIVC2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnPresentVC3Click(_ sender: Any) {
        presentVC(storyboard: "TabBarVCWithUIVCSB", identifier: "TabBarVCWithUIVC3")
    }
    
}

class TabBarVCWithUIVC3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        self.navigationItem.title = "VC3"
    }
    
    @IBAction func btnDismissClick(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
