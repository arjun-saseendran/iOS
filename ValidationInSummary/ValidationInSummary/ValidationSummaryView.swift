//
//  ValidationSummeryView.swift
//  ValidationInSummary
//
//  Created by Arjun Saseendran on 17/05/26.
//

import SwiftUI

struct ValidationSummaryView: View {
    let errors: [LocalizedError]
    
    var body: some View {
        ForEach(errors, id: \.id){ error in
            Text(error.localizedDescription)
            
        }
    }
}
