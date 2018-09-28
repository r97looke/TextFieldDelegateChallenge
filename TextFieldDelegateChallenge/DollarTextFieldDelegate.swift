//
//  DollarTextFieldDelegate.swift
//  TextFieldDelegateChallenge
//
//  Created by slchen on 2018/9/28.
//  Copyright © 2018 slchen. All rights reserved.
//

import UIKit

class DollarTextFieldDelegate: NSObject, UITextFieldDelegate {

    let LIMIT = (Int.max - 9)/10

    let numberFormatter = NumberFormatter()
    var value = 0

    override init() {
        super.init()
        numberFormatter.numberStyle = .currency
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (range.length == 0 && string.count != 0) {
            if value < LIMIT {
                value *= 10
                value += (string as NSString).integerValue
                let dollar = Double(value)/100
                textField.text = numberFormatter.string(from: NSNumber(value: dollar))
                return false
            } else {
                return false
            }
        }

        return false
    }


}
