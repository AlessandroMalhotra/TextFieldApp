//
//  SwitchDelegate.swift
//  TextFieldApp
//
//  Created by Alessandro Malhotra on 18/09/2021.
//

import Foundation

import UIKit

class SwitchDelegate: NSObject, UITextFieldDelegate {
    
    // user can only edit the text box when the switch is on
    
    // need text field delegate and also begin editting function: put the enabling of the switch in here as this will determine if can edit in the box
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
    }
}
