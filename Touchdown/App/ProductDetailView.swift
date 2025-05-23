//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct ProductDetailView: View {
	
	
	// MARK: - properties
	
	@EnvironmentObject var shop: Shop
	
	
	// MARK: - body
	
	var body: some View {
		if let product = shop.selectedProduct {
			VStack(alignment: .leading, spacing: 5) {
				// navbar
				NavigationBarDetailView()
					.padding(.horizontal)
					.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
				
				// header
				HeaderDetailView()
					.padding(.horizontal)
				
				// detail top part
				TopPartDetailView()
					.padding(.horizontal)
					.zIndex(1)
				
				// detail bottom part
				VStack(alignment: .center, spacing: 0) {
					// ratings + sizes
					RatingSizesDetailView()
						.padding(.top, -25)
						.padding(.bottom, 10)
					
					// description
					ScrollView(.vertical, showsIndicators: false) {
						Text(product.description)
							.font(.system(.body, design: .rounded))
							.foregroundColor(.gray)
							.multilineTextAlignment(.leading)
					} // ScrollView
					
					// quantity + favorite
					QuantityFavouriteDetailView()
						.padding(.vertical, 10)
					
					// add to cart
					AddToCartDetailView()
						.padding(.bottom, 20)
					
				} // VStack
				.padding(.horizontal)
				.background(
					Color.white.clipShape(CustomShape())
						.padding(.top, -105)
				)
				
			} // VStack
			.zIndex(0)
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
}


// MARK: - preview

struct ProductDetailView_Previews: PreviewProvider {
	static var previews: some View {
		ProductDetailView()
			.environmentObject(Shop())
			.previewLayout(.fixed(width: 375, height: 812))
	}
}
