//
//  ValidationSummeryView.swift
//  ValidationInSummary
//
//  Created by Arjun Saseendran on 17/05/26.
//

import SwiftUI

struct ValidationSummeryView: View {
    let errors: [LocalizedError]
    
    var body some View: {
        forEach(errors, id: \.id){ error in
            Text(error.localizedDescription)
            
        }
    }
}
