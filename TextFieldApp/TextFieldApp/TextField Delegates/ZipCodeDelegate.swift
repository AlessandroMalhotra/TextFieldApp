//
//  ZipCodeDelegate.swift
//  TextFieldApp
//
//  Created by Alessandro Malhotra on 17/09/2021.
//

import Foundation

import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true;
    }
}
