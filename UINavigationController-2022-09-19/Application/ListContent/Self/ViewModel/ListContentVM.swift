//
//  ListContentVM.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import Foundation

class ListContentVM {
    
    var listContentData = [ListContentRowType]()
    
    func getListContentData() {
        
        listContentData = [
            .SetRootViewController,
            .PushViewController,
            .UsingPopViewController,
            .PresentingViewController,
            .SetViewController,
            .UsingUITabBarViewControllerwithUINavigationController,
            .CustomNavigationBar
        ]
        
    }
    
}

