//
//  Shop.swift
//  Touchdown
//
//  Created by Gaurav Bhasin on 3/4/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product? = nil
}
