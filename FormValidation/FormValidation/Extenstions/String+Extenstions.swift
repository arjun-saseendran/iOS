//
//  String+Extenstions.swift
//  FormValidation
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailRegEx = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: self)
        
    }
}
