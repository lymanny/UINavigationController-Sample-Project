//
//  UIColor.swift
//  UINavigationController-2022-09-19
//
//  Created by Ly Manny on 29/9/22.
//

import UIKit

extension UIColor {
    
    convenience init(hexString: String, alpha: CGFloat = 1) {
        
        let hexString: String       = (hexString as NSString).trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner                 = Scanner(string: hexString as String)
        
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha: alpha)
    }
    
    class func colorValue() -> UIColor {
        return UIColor(hexString: "282828").withAlphaComponent(1.0)
    }
    
}
