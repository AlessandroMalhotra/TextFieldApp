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
    @IBOutlet weak var countLabel: UILabel!
    
    // MARK: Delegate Objects
    let zipCodeDelegate = ZipCodeDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the three delegates
        self.textField1.delegate = zipCodeDelegate
    }


}

