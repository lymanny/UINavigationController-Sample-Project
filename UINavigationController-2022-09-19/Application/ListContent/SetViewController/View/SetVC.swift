//
//  SetVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

class SetVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnAppendVC2ToVC4Click(_ sender: Any) {
        // Declare navigationController
        var controllers     = navigationController?.viewControllers
        
        // Check VC is available
        guard let secondVC  = storyboard?.instantiateViewController(withIdentifier: "SetVC2") else {return}
        guard let thirdVC   = storyboard?.instantiateViewController(withIdentifier: "SetVC3") else {return}
        guard let fourthVC  = storyboard?.instantiateViewController(withIdentifier: "SetVC4") else {return}
        
        // Append VC intro navigationController
        controllers?.append(secondVC)
        controllers?.append(thirdVC)
        controllers?.append(fourthVC)
        
        if let controllers = controllers {
            // This method will push or present depending on whether the new top view controller was previously in the stack.
            navigationController?.setViewControllers(controllers, animated: true)
        }
        
    }
    
}

class SetVC2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

class SetVC3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

class SetVC4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnRemoveVC(_ sender: Any) {
        var navVCArray = self.navigationController?.viewControllers
        navVCArray?.removeLast()     //Remove the last view controller
        navVCArray?.removeFirst()   // Remove the first view controller
        navVCArray?.removeAll()    //Remove all view controllers
//        navVCArray?.remove(at: 0) //Remove at specific position
        
    }
    
    @IBAction func btnInsertVC(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "SetVC2")
        navigationController?.viewControllers.insert(vc!, at: 0)
        
    }
    
}
