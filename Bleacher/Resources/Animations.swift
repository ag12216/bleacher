//
//  Animations.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import Foundation
import UIKit

class Animations: UIViewController{
   
    public static let sharedInstance: Animations = Animations()
    
    func animateToBackGroundWithImage(image imageView: UIImageView,parentView customview: UIView){
        UIView.animate(withDuration: 1, animations: {() -> Void in
            imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }) { status in
            if status{
                customview.sendSubviewToBack(imageView)
            }
        }
    }
    
    func animateWithScale(time: TimeInterval,delay: TimeInterval, animationOption: UIView.AnimationOptions,_ scalex: CGFloat,scaleY: CGFloat,_ toAnimate: UIView){
        UIView.animate(withDuration: time, delay: delay, options: animationOption, animations: {() -> Void in
            toAnimate.transform = CGAffineTransform(scaleX: scalex, y: scaleY)
        }, completion: { status in
            
        })
    }
    
    func moveToViewwithAnimation(_ toView: UIView,_duration: TimeInterval,_scaleX:CGFloat,_scaleY: CGFloat,_translateX: CGFloat,_translateY: CGFloat){
        let originalTransform = toView.transform
        let scaledTransform = originalTransform.scaledBy(x: _scaleX, y: _scaleY)
        let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: _translateX, y: _translateY)
        
        UIView.animate(withDuration: _duration, animations: {
            toView.transform = scaledAndTranslatedTransform
        })
    }
    
    func animateToHideView(toView: UIView,_duration: TimeInterval){
        UIView.animate(withDuration: _duration, animations: { () -> Void in
            toView.alpha = 0.0
        }, completion:{ status in
            toView.isHidden = true
        })
    }
}

