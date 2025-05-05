//
//  Shop.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/5/25.
//

import Foundation

class Shop : ObservableObject {
	@Published var showingProduct: Bool = false
	@Published var selectedProduct: Product? = nil
}
