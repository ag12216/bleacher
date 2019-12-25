//
//  UIView.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
  func alert(message: String, title: String = "") {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(OKAction)
    self.present(alertController, animated: true, completion: nil)
  }
}

class SemiCirleView: UIView {

    var semiCirleLayer: CAShapeLayer!

    override func layoutSubviews() {
        super.layoutSubviews()

        if semiCirleLayer == nil {
            let arcCenter = CGPoint(x: bounds.size.width / 2, y: bounds.size.height / 2)
            let circleRadius = bounds.size.width / 2
            let circlePath = UIBezierPath(arcCenter: arcCenter, radius: circleRadius, startAngle: CGFloat.pi, endAngle: CGFloat.pi * 2, clockwise: true)

            semiCirleLayer = CAShapeLayer()
            semiCirleLayer.path = circlePath.cgPath
            semiCirleLayer.fillColor = UIColor.red.cgColor
            layer.addSublayer(semiCirleLayer)

            // Make the view color transparent
            backgroundColor = UIColor.clear
        }
    }
}

extension UIView {

  func move(to destination: CGPoint, duration: TimeInterval,
            options: UIView.AnimationOptions) {
    UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
      self.center = destination
    }, completion: nil)
  }

}
