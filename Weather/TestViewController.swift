//
//  TestViewController.swift
//  Weather
//
//  Created by Macbook on 17.02.2020.
//  Copyright © 2020 CASTRTROY TECHNOLOGY LIMITED. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
class TestView : UIView{
    
    override func draw(_ rect: CGRect ){
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else {return}
        context.fill(CGRect(x : 0 , y: 0, width: 50, height: 50 ))
    }
        
        
        
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
