//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/4/25.
//

import SwiftUI

struct AddToCartDetailView: View {
	
	
	// MARK: - properties
	
	@EnvironmentObject var shop: Shop
	
	
	// MARK: - body
	
	var body: some View {
		Button(action: {
			feedback.impactOccurred()
		}) {
			Spacer()
			Text("Add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			Spacer()
		}
		.padding(15)
		.background(
			Group {
				if let product = shop.selectedProduct {
					Color(
						red: product.red,
						green: product.green,
						blue: product.blue
					)
				} else {
					colorBackground
				}
			}
		)
		.clipShape(Capsule())
	}
}


// MARK: - preview

struct AddToCartDetailView_Previews: PreviewProvider {
	static var previews: some View {
		AddToCartDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
			.environmentObject(Shop())
	}
}
