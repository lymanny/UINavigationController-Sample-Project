//
//  ListContentVC.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

class ListContentVC: UIViewController {

    //MARK: - @IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Properties & Variable
    var listContentVM = ListContentVM()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpView()
    }
    
    //MARK: - Function
    func setUpView() {
        listContentVM.getListContentData()
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.title = "ListContentVC"
    }
    
}

//MARK: - UITableViewDelegate, UITableViewDataSource
extension ListContentVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listContentVM.listContentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell     = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell?.selectionStyle           = .none
        cell?.textLabel?.textAlignment = .center
        cell?.backgroundColor          = .black
        cell?.textLabel?.textColor     = .white
        cell?.textLabel?.text          = "\(listContentVM.listContentData[indexPath.row])"

        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let rowType = listContentVM.listContentData[indexPath.row]
        
        switch rowType {
            
        case .SetRootViewController:
            pushNavigation(storyboard: "RootSB", identifier: "RootVC")
             
        case .PushViewController:
            pushNavigation(storyboard: "PushSB", identifier: "PushVC")
            
        case .UsingPopViewController:
            pushNavigation(storyboard: "UsingPopSB", identifier: "UsingPopVC")
            
        case .PresentingViewController:
           pushNavigation(storyboard: "PresentingSB", identifier: "PresentingVC")
            
        case .SetViewController:
            pushNavigation(storyboard: "SetSB", identifier: "SetVC")
            
        case .UsingUITabBarViewControllerwithUINavigationController:
            pushNavigation(storyboard: "TabBarVCWithNavigationSB", identifier: "TabBarVCWithNavigationVC")
            
        case .CustomNavigationBar:
            pushNavigation(storyboard: "CustomNavigationBarSB", identifier: "CustomNavigationBarVC")
            
        }
        
    }
    
    
}

