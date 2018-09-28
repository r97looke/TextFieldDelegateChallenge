//
//  ZIPCodeTextFieldDelegate.swift
//  TextFieldDelegateChallenge
//
//  Created by slchen on 2018/9/28.
//  Copyright © 2018 slchen. All rights reserved.
//

import UIKit

class ZIPCodeTextFieldDelegate: NSObject, UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var currText = textField.text! as NSString
        let newText = currText.replacingCharacters(in: range, with: string)
        if newText.count > 5 {
            return false
        }

        return true
    }
}
