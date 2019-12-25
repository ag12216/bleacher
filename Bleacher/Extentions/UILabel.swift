//
//  UILabel+FontType+FontSize+FontColor.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import Foundation

import UIKit

extension UILabel {

    func setLabel(fontsize: CGFloat,fontType:String,fontColor:String,labelTitle:String) {
     //   self.font = self.font.withSize(fontsize)
        self.font = UIFont(name:fontType, size:fontsize)
        self.textColor = UIColor(hexString:fontColor)
        self.numberOfLines = 3
        self.text = labelTitle

    }
}
