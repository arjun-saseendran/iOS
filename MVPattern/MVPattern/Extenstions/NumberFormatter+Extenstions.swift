//
//  NumberFormatter+Extenstions.swift
//  MVPattern
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
