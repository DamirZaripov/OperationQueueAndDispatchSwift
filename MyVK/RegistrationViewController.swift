//
//  RegistrationViewController.swift
//  MyVK
//
//  Created by Дамир Зарипов on 30.10.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var registrationScrollView: UIScrollView!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        
        var currectInfo = true
        guard let name = nameTextField.text, !name.isEmpty else {return}
        guard let surname = surnameTextField.text, !surname.isEmpty else {return}
    }
    
    // высчитывает длину клавиатуры и позволяет скроллить поля
    @objc func keyboardWillShow(notification:NSNotification){
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.registrationScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        registrationScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        registrationScrollView.contentInset = contentInset
    }
    

}
