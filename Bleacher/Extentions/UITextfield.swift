//
//  UITextfield.swift
//  Bleacher
//
//  Created by Mindbowser on 19/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import Foundation
import UIKit
extension UITextField {
    
    
    func createBorderTextfield(textFieldPlaceHolder:String, textfieldBorderColor:String,textfieldtextColor:String,fontName:String) {
         self.layer.cornerRadius = self.frame.height / 2
         self.placeholder = textFieldPlaceHolder
        self.textColor = UIColor(hexString: textfieldtextColor)
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor(hexString:textfieldBorderColor).cgColor
        self.font = UIFont(name:fontName , size:20.0)
        self.attributedPlaceholder = NSAttributedString(string: textFieldPlaceHolder,
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            //  self.layer.sublayerTransform = CATransform3DMakeTranslation(25, 0, 0);

       // self.text?.font =  UIFont(name:fontName, size: fontSize)
       //  self.tintColor = .white
   }
    
    
}



class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
