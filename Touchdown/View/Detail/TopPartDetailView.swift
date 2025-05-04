//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct TopPartDetailView: View {
	
	
	// MARK: - properties
	
	let product: Product
	@State private var isAnimating: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		HStack(alignment: .center, spacing: 6) {
			// price
			VStack(alignment: .leading, spacing: 6) {
				Text("Price")
					.fontWeight(.semibold)
				
				Text(product.formattedPrice)
					.font(.largeTitle)
					.fontWeight(.black)
					.scaleEffect(1.35, anchor: .leading)
			}
			.offset(y: isAnimating ? -50 : -75)
			
			Spacer()
			
			// photo
			Image(product.image)
				.resizable()
				.scaledToFit()
				.offset(y: isAnimating ? 0 : -35)
		} // HStack
		.onAppear(perform: {
			withAnimation(.easeOut(duration: 0.75)) {
				isAnimating.toggle()
			}
		})
	}
}


// MARK: - preview

struct TopPartDetailView_Previews: PreviewProvider {
	static var previews: some View {
		TopPartDetailView(product: products[0])
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
