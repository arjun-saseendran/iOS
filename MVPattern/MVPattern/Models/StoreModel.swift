//
//  StoreModel.swift
//  MVPattern
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation
import Combine

@MainActor
class StoreModel: ObservableObject {
    let webService: WebService
    
    @Published var products: [Product] = []
    
    init(webService: WebService){
        self.webService = webService
    }
    
    func populateProducts() async throws{
        products = try await webService.getProducts()
    }
}
