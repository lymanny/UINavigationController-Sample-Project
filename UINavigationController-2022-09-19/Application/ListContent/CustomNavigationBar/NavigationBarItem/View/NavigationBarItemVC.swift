//
//  NavigationBarItemVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 27/9/22.
//

import UIKit

//MARK: - NavigationBarItemVC
class NavigationBarItemVC: UIViewController {
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavAndStatusBarColor()
        
    }
    
    //MARK: - @IBAction
    @IBAction func barItemHelloClick(_ sender: Any) {
        print("===> barItemHelloClick")
    }
    
    @IBAction func barItemClick(_ sender: Any) {
        print("===> barItemClick")
    }
    
    @IBAction func backToCustomNavigationBar(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    //MARK: - Function
    func setUpNavAndStatusBarColor() {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor     = UIColor.black
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance      = appearance;
        navigationController?.navigationBar.scrollEdgeAppearance    = navigationController?.navigationBar.standardAppearance
        
        self.navigationItem.title      = "VC1"
        
    }
    
}

//MARK: - NavigationBarItemVC2
class NavigationBarItemVC2: UIViewController {
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpRightBarButtonItems()
        
    }
    
    //MARK: - Function
    func setUpRightBarButtonItems() {
        
        let add   = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addClick))
        let hello = UIBarButtonItem(title: "hello", style: .plain, target: self, action: #selector(helloClick))
        
        navigationItem.rightBarButtonItems = [add, hello]
        
    }
    
    //MARK: - @OBJC
    @objc func addClick() {
        print("===> addClick")
    }
    
    @objc func helloClick() {
        print("===> helloClick")
    }
    
}

