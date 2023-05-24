//
//  GradiantView.swift
//  Gach
//
//  Created by Bui Kim Tung on 22/05/2023.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    @IBInspectable var startColor: UIColor = UIColor.white
    @IBInspectable var endColor: UIColor = UIColor.white
    
    override func layoutSubviews() {
        let gradienLayer = layer as! CAGradientLayer
        gradienLayer.colors = [startColor.cgColor, endColor.cgColor]
        g
    }
}
