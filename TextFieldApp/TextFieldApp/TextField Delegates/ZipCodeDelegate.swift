//
//  ZipCodeDelegate.swift
//  TextFieldApp
//
//  Created by Alessandro Malhotra on 17/09/2021.
//

import Foundation

import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    var count = 0
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let newText = textField.text! as NSString
        
        return newText.length < 5
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true;
    }
}
