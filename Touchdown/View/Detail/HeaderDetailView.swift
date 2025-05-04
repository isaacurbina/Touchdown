//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct HeaderDetailView: View {
	
	
	// MARK: - properties
	
	let product: Product
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			Text("Protective Gear")
			
			Text(product.name)
				.font(.largeTitle)
				.fontWeight(.black)
		} // VStack
		.foregroundColor(.white)
	}
}


// MARK: - preview

struct HeaderDetailView_Previews: PreviewProvider {
	static var previews: some View {
		HeaderDetailView(product: products[0])
			.previewLayout(.sizeThatFits)
			.padding()
			.background(.gray)
	}
}
