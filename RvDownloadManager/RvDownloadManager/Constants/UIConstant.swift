//
//  UIConstant.swift
//  CTMS
//
//  Created by Ravi Vora on 17/08/16.
//  Copyright © 2016 Softweb Solutions. All rights reserved.
//

import Foundation
import UIKit

class UIConstant  {

    static let appTextColor = "#152F3C"
    static let placeHolderColor = "#717171"
    static let detailTextColor = "#717171"
    static let appBgColor = "#EEF1F5"

    
    struct Fonts
    {
        static func FONT_HELVETICA_REGULAR(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Helvetica", size: _size)!
            return font
        }
        
        static func FONT_HELVETICA_LIGHT(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Helvetica-Light", size: _size)!
            return font
        }
        
        static func FONT_HELVETICA_BOLD(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Helvetica-Bold", size: _size)!
            return font
        }
        
        static func FONT_HELVETICA_OBLIQUE(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Helvetica-Oblique", size: _size)!
            return font
        }

    }

    
    struct Images {
        static let profileImageIcon = "user_icon"
    }

}