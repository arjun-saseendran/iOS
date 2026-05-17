//
//  LoginErrors.swift
//  ValidationVM
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation

enum LoginError: Error, LocalizedError {
    case emailEmpty
    case emailInvalid
    case passwordEmpty
    
    var errorDescription: String? {
        switch self {
        case .emailEmpty:
            return "Email can not be empty!"
        case .emailInvalid:
            return "Email not in correct format!"
        case .passwordEmpty:
            return "Password can not be empty!"
        }
    }
}
