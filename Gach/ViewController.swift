//
//  ViewController.swift
//  Gach
//
//  Created by Bui Kim Tung on 22/05/2023.
//

import UIKit

class ViewController: UIViewController {
    let radius: CGFloat = 50.0
    
    let containerView: UIView = {
        let view = UIView()
        
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let brickView = BrickView(startPoint: CGPoint(x:0, y:0), fillColor: UIColor.orange, radius: 50)
//        brickView.center = view.center
//        view.addSubview(brickView)
        
        containerView.frame = CGRect(x: 0, y: 0, width: radius * 2 * 3, height: radius * 2 * 3)
        containerView.center = view.center
        containerView.backgroundColor = .lightGray
        view.addSubview(containerView)
    }
    
    @IBAction func onPress(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            drawI()
            break
        case 2:
            drawO()
            break
        case 3:
            drawL()
            break
        case 4:
            drawZ()
            break
        default:
            return
        }
    }
    
    func removeBrickView(){
        if containerView.subviews.count > 0 {
            for item in containerView.subviews {
                item.removeFromSuperview()
            }
        }
    }
    
    func drawBrick(col: Int, row: Int, radius: CGFloat) {
        let d = radius * 2
        let brick = BrickView(startPoint: CGPoint(x: d * CGFloat(col), y: d * CGFloat(row)), fillColor: UIColor.orange, radius: radius)
        containerView.addSubview(brick)
    }
    
    func drawI() {
        removeBrickView()
        for i in 0...2 {
            for j in 0...2 {
                if j == 1 {
                    drawBrick(col: j, row: i, radius:  radius)
                }
            }
        }
    }
    
    func drawO() {
        removeBrickView()
        for i in 0...2 {
            for j in 0...2 {
                if i < 2 && j < 2 {
                    drawBrick(col: j, row: i, radius: radius)
                }
            }
        }
    }
    
    func drawL() {
        removeBrickView()
        for i in 0...2 {
            for j in 0...2 {
                if j == 0 || i > j {
                    drawBrick(col: j, row:i, radius: radius)
                }
            }
        }
    }
    
    func drawZ() {
        removeBrickView()
        for i in 0...2 {
            for j in 0...2 {
                if j == 1 || i == j {
                    drawBrick(col: j, row:i, radius: radius)
                }
            }
        }
    }
}

