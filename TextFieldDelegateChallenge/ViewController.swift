//
//  ViewController.swift
//  TextFieldDelegateChallenge
//
//  Created by slchen on 2018/9/28.
//  Copyright © 2018 slchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!

    let zipCodeDelegate = ZIPCodeTextFieldDelegate()
    let dollarDelegate = DollarTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        zipCodeTextField.delegate = zipCodeDelegate
        dollarTextField.delegate = dollarDelegate
        lockableTextField.isEnabled = lockSwitch.isOn
    }

    @IBAction func lockSwitchChanged(_ sender: Any) {
        lockableTextField.isEnabled = lockSwitch.isOn
    }
    
}

