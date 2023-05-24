//
//  NewNewController.swift
//  Gach
//
//  Created by Bui Kim Tung on 22/05/2023.
//

import UIKit

class NewNewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIView {
    @IBInspectable  var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        
        set (value) {
            layer.borderWidth = value
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let borderColor = self.borderColor else {
                return nil
            }
            
            return UIColor(cgColor: borderColor.cgColor)
        }
        
        set (value) {
            layer.borderColor = value?.cgColor
        }
    }
    
    @IBInspectable var borderRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set (value) {
            layer.cornerRadius = value
            layer.masksToBounds = true
            self.clipsToBounds = true
        }
    }
    
    @IBInspectable var isCircle: Bool {
        get {
            return self.isCircle
        }
        
        set (value) {
            if value {
                layer.cornerRadius = self.bounds.height/2
                clipsToBounds = true
                layer.masksToBounds = true
            } else {
                
            }
        }
    }
}
