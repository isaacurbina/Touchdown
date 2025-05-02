//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/2/25.
//

import SwiftUI

struct ProductItemView: View {
	
	
	// MARK: - properties
	
	let product: Product
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			// photo
			ZStack {
				Image(product.image)
					.resizable()
					.scaledToFit()
					.padding(10)
			} // ZStack
			.background(Color(red: product.red, green: product.green, blue: product.blue))
			.cornerRadius(12)
			
			// name
			Text(product.name)
				.font(.title3)
				.fontWeight(.black)
			
			// price
			Text(product.formattedPrice)
				.fontWeight(.semibold)
				.foregroundColor(.gray)
			
		} // VStack
	}
}


// MARK: - preview

struct ProductItemView_Previews: PreviewProvider {
	static var previews: some View {
		ProductItemView(product: products[0])
			.previewLayout(.fixed(width: 200, height: 300))
			.padding()
			.background(colorBackground)
	}
}
