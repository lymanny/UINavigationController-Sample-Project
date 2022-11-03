//
//  UIViewController.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 20/9/22.
//

import UIKit

extension UIViewController {
    
    //MARK: - Variable & Properties
    typealias Completion = () -> Void
    
    //MARK: - Function
    func pushNavigation(storyboard: String, identifier: String) {
        let vc = UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier: identifier)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func presentVC(storyboard: String, identifier: String) {
        let vc = UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier: identifier)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    /* Common default navigation bar style
     * 1: isHidden -> Navigation bar hidden
     * 2: animated -> Navigation bar animted
     * 3: title -> Navigation bar title
     * 3+:titleColor -> Navigation bar title color
     * 4: barTintColor -> Navigation bar color
     * 5: leftBarButtonImage -> Navigation bar left barbutton image
     * 9: leftSelector -> Navigation bar left barbutton selector
     * 10: rightBarButtonImage -> Navigation bar right barbutton image
     * 11: rightBarButtonTitle -> Navigation bar right barbutton title
     * 12: rightBarButtonColor -> Navigation bar right barbutton title color
     * 13: selector -> Navigation bar right barbutton selector
     * 14: isEnable -> Navigation bar right barbutton enable/disable
     */
    func setNavigationBarStyle(isHidden                        : Bool,
                               animated                        : Bool,
                               title                           : String?,
                               leftBarButtonTitle leftBarTitle : String?     = nil,
                               titleColor                      : UIColor     = .colorValue(),
                               barTintColor                    : UIColor     = .white,
                               leftBarButtonImage leftImage    : UIImage?    = UIImage(named: "00CommonAppBarMainBackIconGrey"),
                               leftSelector                    : Selector?   = #selector(leftBarButtonAction),
                               rightBarButtonImage images      : [UIImage?]  = [],
                               rightBarButtonTitle buttonTitles: [String]?   = nil,
                               rightBarButtonColor buttonColors: [UIColor]?  = nil,
                               selectors                       : [Selector]? = nil,
                               isEnable                        : Bool        = true) {
        
        if #available(iOS 13.0, *) {
            
            self.navigationController?.navigationBar.scrollEdgeAppearance = self.navigationController?.navigationBar.standardAppearance
            
            self.navigationController?.navigationBar.standardAppearance.shadowColor = .clear
            self.navigationController?.navigationBar.scrollEdgeAppearance?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor, NSAttributedString.Key.font : UIFont.init(name: "AppleSDGothicNeo-Medium", size: 20)!]
            
            // For custom TextAttributes
            // When tableview scroll to the top, it change from custom font to default sytem Font.
            // Use this line to prevent this problem from getting default system font.
            self.navigationController?.navigationBar.standardAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor, NSAttributedString.Key.font : UIFont.init(name: "AppleSDGothicNeo-Medium", size: 20)!]
            
            self.navigationController?.navigationBar.standardAppearance.backgroundColor = barTintColor
            
            // Set background color of ScrollEdgebackground
            self.navigationController?.navigationBar.scrollEdgeAppearance?.backgroundColor = barTintColor
            self.navigationController?.navigationBar.standardAppearance.shadowImage = UIImage()
            self.navigationController?.navigationBar.setBackgroundImage(UIImage().imageWithColor(color: .white), for: .default)
        } else {
            // Fallback on earlier versions
        }
        
        // Navigation bar title
        self.navigationItem.title = title
        
        // Navigation bar style
        self.navigationController?.setNavigationBarHidden(isHidden, animated: animated)
        
        // Default navigation bar is White
        self.navigationController?.navigationBar.barTintColor = barTintColor
        
        // Default navigation bar title color is "747474" and Font AppleSDGothicNeo-Medium
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor, NSAttributedString.Key.font : UIFont.init(name: "AppleSDGothicNeo-Medium", size: 20)!]
        
        // Default navigation back button is empty
        self.navigationController?.navigationBar.topItem?.backButtonTitle = ""
        
        // Default navigation back button color is "747474"
        self.navigationController?.navigationBar.tintColor = UIColor(hexString: "747474")
        
        // Set rightBar button properties
        let right           : CGFloat               = -5 // Old = 6
        var rightBarButton  : [UIBarButtonItem]     = []
        
        for (i,_) in images.enumerated() {
            let rightbutton = UIButton(type: .custom)
            rightbutton.contentHorizontalAlignment = .right
            rightbutton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
            rightbutton.titleLabel?.font = UIFont.init(name: "AppleSDGothicNeo-Medium", size: 18)!
            rightbutton.contentHorizontalAlignment = .right
            rightbutton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: right)
            //            right = right - 20
            
            rightbutton.setImage(images[i], for: .normal)
            
            if let buttonTitles = buttonTitles {
                rightbutton.setTitle(buttonTitles[i], for: .normal)
            }
            
            if let buttonColors = buttonColors {
                rightbutton.setTitleColor(buttonColors[i], for: .normal)
            }
            
            rightbutton.isEnabled = isEnable
            
            if let selectors = selectors {
                rightbutton.addTarget(self, action: selectors[i], for: .touchUpInside)
            }
            
            rightBarButton.append(UIBarButtonItem(customView: rightbutton))
            
        }
        if images.count == 0 && (buttonTitles?.count ?? 0) > 0 {
            for (i,_) in (buttonTitles ?? []).enumerated() {
                let rightbutton = UIButton(type: .custom)
                rightbutton.contentHorizontalAlignment = .right
                rightbutton.frame = CGRect(x: 0, y: 0, width: 50, height: 33)
                rightbutton.titleLabel?.font = UIFont.init(name: "AppleSDGothicNeo-Medium", size: 18)!
                rightbutton.contentHorizontalAlignment = .right
                
                if let buttonTitles = buttonTitles {
                    rightbutton.setTitle(buttonTitles[i], for: .normal)
                }
                
                if let buttonColors = buttonColors {
                    rightbutton.setTitleColor(buttonColors[i], for: .normal)
                }else {
                    rightbutton.setTitleColor(.colorValue(), for: .normal)
                }
                
                rightbutton.isEnabled = isEnable
                
                if let selectors = selectors {
                    rightbutton.addTarget(self, action: selectors[i], for: .touchUpInside)
                }
                rightBarButton.append(UIBarButtonItem(customView: rightbutton))
                
            }
        }
        
        self.navigationItem.rightBarButtonItems = rightBarButton
        // Set leftBar button properties
        // Default Back icon image "00CommonAppBarMainBackIconGrey"
        
        let leftButton = UIButton(type: .custom)
        if leftImage == nil {
            leftButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }else {
            leftButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
        }
        
        leftButton.contentHorizontalAlignment = .left
        leftButton.frame = CGRect(x: 0, y: 0, width: 50, height: 33)
        leftButton.setImage(leftImage, for: .normal)
        leftButton.setTitle(leftBarTitle, for: .normal)
        leftButton.setTitleColor(UIColor(hexString: "#282828"), for: .normal)
        
        
        // Use back system as default if leftSelector not set
        if let selector = leftSelector {
            leftButton.addTarget(self, action: selector, for: .touchUpInside)
            
        }
        
        let leftBarButton = UIBarButtonItem(customView: leftButton)
        self.navigationItem.leftBarButtonItem = leftBarButton
        
    }
    
    func popOrDismissVC(animated: Bool = true, completion: @escaping Completion = { }) {
        if let nav = self.navigationController {
            
            //when there is no more children to popViewController use dismiss
            if nav.viewControllers.count > 1 {
                nav.popViewController(animated: animated)
                completion()
            }else {
                self.dismiss(animated: animated) {
                    completion()
                }
            }
        }
        else {
            self.dismiss(animated: animated) {
                completion()
            }
        }
    }
    
    //MARK: - OBJC
    @objc func leftBarButtonAction() {
        self.popOrDismissVC()
    }
    
}
