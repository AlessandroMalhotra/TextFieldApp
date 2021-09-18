//
//  ViewController.swift
//  TextFieldApp
//
//  Created by Alessandro Malhotra on 17/09/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var onOfSwitch: UISwitch!
    
    // MARK: Delegate Objects
    let zipCodeDelegate = ZipCodeDelegate()
    let currencyDelegate = CurrencyDelegte()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the three delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = currencyDelegate
    }


}

