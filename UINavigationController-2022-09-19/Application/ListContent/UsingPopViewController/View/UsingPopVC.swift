//
//  UsingPopVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

class UsingPopVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

class UsingPopVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

class UsingPopVC3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnPopVCClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btnPopToVCClick(_ sender: Any) {
        if let vc = self.navigationController?.viewControllers.filter({ $0 is UsingPopVC }).first as? UsingPopVC {
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }
    
    @IBAction func btnPopToRootVCClick(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
