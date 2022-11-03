//
//  NavigationBarWithStatusBarSB.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 22/9/22.
//

import UIKit

class NavigationBarWithStatusBarVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  Normal Navigation
        setUpNavAndStatusBarColor() // status bar has color the same as navigation

    }
    
    @IBAction func backToCustomNavigationBar(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    func setUpNavAndStatusBarColor() {
 
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor     = UIColor.black
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance      = appearance;
        navigationController?.navigationBar.scrollEdgeAppearance    = navigationController?.navigationBar.standardAppearance
        
        self.navigationItem.title      = "NAV VC1"
        self.tabBarController?.viewControllers?[0].tabBarItem.title = NSLocalizedString("TAB VC1", comment: "")
        self.tabBarController?.viewControllers?[1].tabBarItem.title = NSLocalizedString("TAB VC2", comment: "")
        
    }
    
}

class NavigationBarWithStatusBarVC3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "VC3"

    }
    
}

class NavigationBarWithStatusBarVC2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Large Title Navigation
        setUpNavAndStatusBarColor() // status bar has color the same as navigation

    }
    
    @IBAction func backToCustomNavigationBar(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    func setUpNavAndStatusBarColor() {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor          = UIColor.black
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance   = appearance;
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        
        self.navigationItem.title           = "NAV VC2"
    }
    
}

class NavigationBarWithStatusBarVC4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "VC4"
        
    }
    
}

