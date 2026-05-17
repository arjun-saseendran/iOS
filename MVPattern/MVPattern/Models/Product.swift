//
//  Product.swift
//  MVPattern
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation

struct Product: Decodable, Identifiable{
    let id: Int
    let title: String
    let price: Double
    let description: String
}

