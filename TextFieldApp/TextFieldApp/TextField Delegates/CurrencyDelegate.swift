//
//  CurrencyDelegate.swift
//  TextFieldApp
//
//  Created by Alessandro Malhotra on 17/09/2021.
//

import Foundation

import UIKit

class CurrencyDelegte: NSObject, UITextFieldDelegate {
    
    var number = Int()
    
    ///  dollar sign field that begins with the text $0.00, and then fills in the dollar figure as digits are added. For example, typing 4-2-7-5 would produce $0.00, $0.04, $0.42, $4.27, $42.75.
    /// Update the text in textfield to increment as user types the digits, implent func text field method to update the text
    
    /// When writing the CashTextFieldDelegate a good first step is to create an Int that represents the number of pennies in the value entered by the user. Once you have that Int, it is easier to construct the correctly formatted cash string.
    /// The Foundation class, NumberFormatter, may come in handy when formatting your cash string. Or you can write your own custom function.
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        number = Int(textField.text!)!
        
        let newNumber = NumberFormatter()
        
        let formattedNumber = newNumber.string(from: NSNumber(value: number))
        
        var newText = formattedNumber! as NSString
        newText = newText.replacingCharacters(in: range, with: formattedNumber!) as NSString
        
        
        return true
    }
}
