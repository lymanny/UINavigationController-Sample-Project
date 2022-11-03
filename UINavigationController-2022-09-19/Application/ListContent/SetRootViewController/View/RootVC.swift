//
//  RootVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

class RootVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnLoginClick(_ sender: Any) {
        setRoot()
    }
    
    func setRoot() {
        
        // Get SB name
        let sbName = UIStoryboard(name: "RootSB", bundle: nil)
                
        // Get VC name
        let navVC = sbName.instantiateViewController(withIdentifier: "NavRootMainVC")
                
        // Check NavVC is UINavigationController type
        if let navViewController = navVC as? UINavigationController {
            
            // Set root to Navigation of RootMainVC
            if let window = UIApplication.shared.keyWindow {
                 window.rootViewController = navViewController
            }

        }
    }
    

}

class RootMainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
}

class RootListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
}
