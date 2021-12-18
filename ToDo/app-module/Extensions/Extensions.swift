//
//  Extensions.swift
//  ToDo
//
//  Created by EDA BARUTÇU on 13.12.2021.
//

import Foundation
import UIKit


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
