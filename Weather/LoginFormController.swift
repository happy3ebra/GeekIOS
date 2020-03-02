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
    
    @IBOutlet weak var ButtonLogin : UIButton!
    
    @IBAction func ButtonAction(_ sender: Any) {
        
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
        
        
        // Создаем для того чтобы при таб на скрол клава уходила
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let login = loginInput.text!
        let password = passwordInput.text!
        
        if login == "admin" && password == "123456" {
            return true
        } else {
            return false
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil )
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func keyboardWillShown (notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let size = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        
        let contentInserts = UIEdgeInsets(top: 0, left: 0, bottom: size.height , right: 0)
        self.scrollView?.contentInset = contentInserts
        self.scrollView.scrollIndicatorInsets = contentInserts
        
    }
    @objc func keyboardWillHide (notification: Notification ){
        scrollView.contentInset = .zero
        
    }
//скрываем клаву
    @objc func hideKeyboard(){
        
        self.scrollView.endEditing(true)
    }
    
    
    
    
    
    
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
    

}
*/
