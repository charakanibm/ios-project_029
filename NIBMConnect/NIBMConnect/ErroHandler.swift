//
//  ErroHandler.swift
//  NIBMConnect
//
//  Created by Charaka Dushyantha on 6/4/19.
//  Copyright © 2019 NIBM. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func displayalert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction((UIAlertAction(title: "Done", style: .default, handler: { (action) -> Void in
            alert.dismiss(animated: true, completion: nil)
        })))
        self.present(alert, animated: true, completion: nil)
    }
}

// Email validation function using regex
func isValidEmail(testStr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
}

extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}
