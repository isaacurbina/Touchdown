//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/4/25.
//

import SwiftUI

struct AddToCartDetailView: View {
	
	
	// MARK: - properties
	
	let product: Product
	
	
	// MARK: - body
	
	var body: some View {
		Button(action: {}) {
			Spacer()
			Text("Add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			Spacer()
		}
		.padding(15)
		.background(
			Color(
				red: product.red,
				green: product.green,
				blue: product.blue
			)
		)
		.clipShape(Capsule())
	}
}


// MARK: - preview

struct AddToCartDetailView_Previews: PreviewProvider {
	static var previews: some View {
		AddToCartDetailView(product: products[0])
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
