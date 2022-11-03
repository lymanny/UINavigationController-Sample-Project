//
//  PresentingVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

class PresentingVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("===>VC1", navigationController?.viewControllers as Any)
    }
    
    
}

class PresentingVC2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("===>VC2", navigationController?.viewControllers as Any)
    }
    
    
}

class PresentingVC3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("===>VC3", navigationController?.viewControllers as Any)
    }
    
    
}

class PresentingVC4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("===>VC4", navigationController?.viewControllers as Any)
    }
    
    @IBAction func btnGoToVC1Click(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
