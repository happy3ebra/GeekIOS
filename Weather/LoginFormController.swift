//
//  LoginFormController.swift
//  Weather
//
//  Created by Macbook on 10.12.2019.
//  Copyright © 2019 CASTRTROY TECHNOLOGY LIMITED. All rights reserved.
//

import UIKit

class LoginFormController: UIViewController {
    
    
    @IBOutlet weak var loginText: UILabel!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordText: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var ButtonLogin: UIButton!
    
    @IBAction func ButtonAction(_ sender: Any) {
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
/*
    func createToolbar() {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .plain,
                                         target: self,
                                         action: #selector(dismissKeyboard))
        
        toolbar.setItems([doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        
        UITextField.inputAccessoryView = toolbar
        
        // Castomization
        toolbar.tintColor = .white
        toolbar.barTintColor = .brown
    }
    
*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
