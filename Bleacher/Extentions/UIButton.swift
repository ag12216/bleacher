//
//  UIButton.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    
    func createHalfRoundedButton(buttonBackgroundColor:String, buttonTitle:String) {
         self.layer.cornerRadius = self.frame.height / 2
         self.setTitle(buttonTitle, for: .normal)
         self.backgroundColor = UIColor(hexString:buttonBackgroundColor)
         self.titleLabel?.font =  UIFont(name:"", size: 20)
         //self.tintColor = .white
        self.setTitleColor(UIColor(hexString: ColorCodes.white), for: .normal)

   }
    
     func normalButtonSetup(buttonTitle:String) {
        
          self.setTitle(buttonTitle, for: .normal)
          self.backgroundColor = .clear
          self.titleLabel?.font =  UIFont(name:"", size: 10)
       
        self.setTitleColor(UIColor(hexString: ColorCodes.dark_gray), for: .normal)

    }
     
    
}
