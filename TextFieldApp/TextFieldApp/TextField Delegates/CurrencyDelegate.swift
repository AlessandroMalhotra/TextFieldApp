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
        

        let text = formatToString(number)
        
        let oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        
        newText = text
        
        textField.text = newText
        
        return false
        
    }
    
    func formatToString(_ value: Int) -> String {
        
        let newNumber = NumberFormatter()
        
        newNumber.numberStyle = .currency
        newNumber.minimumFractionDigits = 2
        newNumber.maximumFractionDigits = 2
        newNumber.currencySymbol = "$"
        
        let string = newNumber.string(from: NSNumber(value: value))!
        
        return string
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
}
