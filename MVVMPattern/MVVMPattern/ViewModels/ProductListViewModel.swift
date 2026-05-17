//
//  ProductListViewModel.swift
//  MVVMPattern
//
//  Created by Arjun Saseendran on 17/05/26.
//

import Foundation
import Combine

@MainActor
class ProductListViewModel: ObservableObject {
    @Published var products: [ProductViewModel] = []
    let webService: WebService
    
    init(webService: WebService){
        self.webService = webService
    }
    
    func populateProducts() async{
        do {
            let products = try await webService.getProducts()
            self.products = products.map(ProductViewModel.init)
        } catch {
            print(error)
        }
    }
    
}

struct ProductViewModel: Identifiable {
    private var product: Product
    
    init(product: Product){
        self.product = product
    }
    
    var id: Int{
      return  product.id
    }
    
    var title: String{
      return  product.title
    }
    
    var price: Double{
      return  product.price
    }
    
    
}
