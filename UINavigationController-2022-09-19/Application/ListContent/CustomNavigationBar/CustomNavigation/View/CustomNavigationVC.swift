//
//  CustomNavigationVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 28/9/22.
//

import UIKit

//MARK: - CustomNavigationVC
class CustomNavigationVC: UIViewController {

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.setNavigationBarStyle(isHidden: false, animated: animated, title: "VC1", titleColor: .white, barTintColor: .black, rightBarButtonImage: [UIImage(named: "main_close_icon")], selectors : [#selector(rightCloseClicked)])

    }
    
    //MARK: - @IBAction
    @IBAction func backToCustomNavigationBar(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func goToCustomNavigationVC2(_ sender: Any) {
        let vc = UIStoryboard(name: "CustomNavigationSB", bundle: nil).instantiateViewController(withIdentifier: "CustomNavigationVC2") as! CustomNavigationVC2
        
        vc.completionData = { data in
            print("===> data", data)
            
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: - OBJC
    @objc private func rightCloseClicked() {
        presentingViewController?.dismiss(animated: true)
    }
    
}

//MARK: - CustomNavigationVC2
class CustomNavigationVC2: UIViewController {
    
    //MARK: - Variable
    var completionData : (String) -> Void = { _ in}

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        var rightBarImages = [UIImage]()
        
        rightBarImages.append(UIImage(named: "main_close_icon")!)
        rightBarImages.append(UIImage(systemName: "arrowshape.turn.up.backward.2")!)
        rightBarImages.append(UIImage(systemName: "arrowshape.turn.up.backward.fill")!)

        self.setNavigationBarStyle(isHidden: false, animated: animated, title: "VC2", titleColor: .white, barTintColor: .systemPink, leftBarButtonImage: UIImage(named: "main_back_icon"), leftSelector: #selector(backClicked), rightBarButtonImage: rightBarImages, selectors : [#selector(rightCloseClicked), #selector(backward), #selector(backward)])
    }

    //MARK: - OBJC
    @objc private func backClicked() {
        self.navigationController?.popViewController(animated: true)
    }

    @objc private func rightCloseClicked() {
        presentingViewController?.dismiss(animated: true)
    }
    
    @objc private func backward() {
        self.popOrDismissVC(animated: true) {
            self.completionData("jisoo")
        }
    }
    
}
