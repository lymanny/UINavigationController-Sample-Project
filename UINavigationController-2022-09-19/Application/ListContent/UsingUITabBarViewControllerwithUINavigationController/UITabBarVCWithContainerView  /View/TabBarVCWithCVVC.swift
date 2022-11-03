//
//  TabBarVCWithCVVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 21/9/22.
//

import UIKit

class TabBarVCWithCVVC: UIViewController {

    @IBOutlet weak var firstView  : UIView!
    @IBOutlet weak var secondView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentedControlClick(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            firstView.alpha  = 1
            secondView.alpha = 0
        } else {
            firstView.alpha  = 0
            secondView.alpha = 1
        }
        
    }
    
}

class TabBarVCWithCVVC2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

class TabBarVCWithCVVC3: UIViewController {
    
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

