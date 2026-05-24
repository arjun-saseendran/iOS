//
//  LocalizedError+Extenstions.swift
//  ValidationInSummary
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation

extension LocalizedError {
    var id: Int {
        localizedDescription.hashValue
    }
}
