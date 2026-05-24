//
//  ContentView.swift
//  ValidationInSummary
//
//  Created by Arjun Saseendran on 17/05/26.
//

import SwiftUI


enum LoginError: LocalizedError, Identifiable{
    case emailEmpty
    case invalidEmail
    case passwordEmpty
    
    var id: Int {
        hashValue
    }
    
    var errorDescription: String? {
        switch self {
        case .emailEmpty:
            return "Email can not be empty!"
        case .invalidEmail:
            return "Email is not in correct format!"
        case .passwordEmpty:
            return "Password can not is empty!"
        }
    }
    
}


struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errors: [LoginError] = []
    
    var isValid: Bool {
        errors.removeAll()
        
        if email.isEmpty{
            errors.append(.emailEmpty)
        }else if !email.isValidEmail{
            errors.append(.invalidEmail)
        }
        
        if password.isEmpty {
            errors.append(.passwordEmpty)
        }
        
        return errors.isEmpty
    }
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            
            Button("Login"){
                if isValid {
                    print("Submit form")
                }
            }
                
            ValidationSummaryView(errors: errors)
        }
    }
}

#Preview {
    ContentView()
}
