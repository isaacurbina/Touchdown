//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct ProductDetailView: View {
	
	// MARK: - properties
	
	let product: Product
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .leading, spacing: 5) {
			// navbar
			NavigationBarDetailView()
				.padding(.horizontal)
				.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
			
			// header
			HeaderDetailView(product: product)
				.padding(.horizontal)
			
			// detail top part
			TopPartDetailView(product: product)
				.padding(.horizontal)
			
			// detail bottom part
			
			// ratings + sizes
			
			// description
			
			// quantity + favorite
			
			// add to cart
			Spacer()
			
		} // VStack
		.ignoresSafeArea(.all, edges: .all)
		.background(
			Color(
				red: product.red,
				green: product.green,
				blue: product.blue
			)
		)
		.ignoresSafeArea(.all, edges: .all)
	}
}


// MARK: - preview

struct ProductDetailView_Previews: PreviewProvider {
	static var previews: some View {
		ProductDetailView(product: products[0])
			.previewLayout(.fixed(width: 375, height: 812))
	}
}
