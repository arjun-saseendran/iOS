//
//  ContentView.swift
//  MVVMPattern
//
//  Created by Arjun Saseendran on 17/05/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ProductListViewModel(webService: WebService())
    var body: some View {
        VStack {
            List(vm.products){ product in
                Text(product.title)
            }.task {
                await vm.populateProducts()
            }
            
        }
    }
}
#Preview {
   
        ContentView()
    }
    

