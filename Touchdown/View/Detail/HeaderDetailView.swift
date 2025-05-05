//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct HeaderDetailView: View {
	
	
	// MARK: - properties
	
	@EnvironmentObject var shop: Shop
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			Text("Protective Gear")
			
			if let product = shop.selectedProduct {
				Text(product.name)
					.font(.largeTitle)
					.fontWeight(.black)
			} else {
				EmptyView()
			}
		} // VStack
		.foregroundColor(.white)
	}
}


// MARK: - preview

struct HeaderDetailView_Previews: PreviewProvider {
	static var previews: some View {
		HeaderDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
			.background(.gray)
	}
}
