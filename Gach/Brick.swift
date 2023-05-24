//
//  Brick.swift
//  Gach
//
//  Created by Bui Kim Tung on 22/05/2023.
//

import UIKit

class BrickView: UIView {
    var fillColor: UIColor!
    var radius: CGFloat = 0.0
    var shapeLayer: CAShapeLayer!
    
    convenience init(startPoint: CGPoint, fillColor: UIColor, radius: CGFloat) {
        self.init(frame: CGRect(x: startPoint.x,
                                y: startPoint.y,
                                width: radius*2,
                                height: radius*2))
        self.fillColor = fillColor
        self.radius = radius
//        self.backgroundColor = fillColor
    }
    
    override func draw(_ rect: CGRect) {
        if shapeLayer == nil {
            shapeLayer = CAShapeLayer()
            shapeLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
            
            shapeLayer.fillColor = fillColor.cgColor
            self.layer.addSublayer(shapeLayer)
            
            let L = self.bounds.size.width
            let x = L/10
            
            let topLayer = CAShapeLayer()
            let path1 = UIBezierPath()
            path1.move(to: CGPoint(x: 0, y: 0))
            path1.addLine(to: CGPoint(x: L, y: 0))
            path1.addLine(to: CGPoint(x: L-x, y: x))
            path1.addLine(to: CGPoint(x: x, y: x))
            topLayer.path = path1.cgPath
            topLayer.fillColor = UIColor.white.cgColor
            topLayer.opacity = 0.4
            shapeLayer.insertSublayer(topLayer, at: 0)
            
            let rightLayer = CAShapeLayer()
            let path2 = UIBezierPath()
            path2.move(to: CGPoint(x: L, y: 0))
            path2.addLine(to: CGPoint(x: L, y: L))
            path2.addLine(to: CGPoint(x: L-x, y: L-x))
            path2.addLine(to: CGPoint(x: L-x, y: x))
            rightLayer.path = path2.cgPath
            rightLayer.fillColor = UIColor.black.cgColor
            rightLayer.opacity = 0.2
            shapeLayer.insertSublayer(rightLayer, at: 0)
            
            let leftLayer = CAShapeLayer()
            let path3 = UIBezierPath()
            path3.move(to: CGPoint(x: 0, y: 0))
            path3.addLine(to: CGPoint(x: x, y: x))
            path3.addLine(to: CGPoint(x: x, y: L-x))
            path3.addLine(to: CGPoint(x: 0, y: L))
            leftLayer.path = path3.cgPath
            leftLayer.fillColor = UIColor.white.cgColor
            leftLayer.opacity = 0.3
            shapeLayer.insertSublayer(leftLayer, at: 0)
            
            let botLayer = CAShapeLayer()
            let path4 = UIBezierPath()
            path4.move(to: CGPoint(x: L, y: L))
            path4.addLine(to: CGPoint(x: L-x, y: L-x))
            path4.addLine(to: CGPoint(x: x, y: L-x))
            path4.addLine(to: CGPoint(x: 0, y: L))
            botLayer.path = path4.cgPath
            botLayer.fillColor = UIColor.black.cgColor
            botLayer.opacity = 0.1
            shapeLayer.insertSublayer(botLayer, at: 0)
        }
    }
}
