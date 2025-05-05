//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct NavigationBarDetailView: View {
	
	
	// MARK: - properties
	
	@EnvironmentObject var shop: Shop
	
	
	// MARK: - body
	
	var body: some View {
		HStack {
			Button(action: {
				feedback.impactOccurred()
				withAnimation(.easeIn) {
					shop.selectedProduct = nil
					shop.showingProduct = false
				}
			}, label: {
				Image(systemName: "chevron.left")
					.font(.title)
					.foregroundColor(.white)
			})
			
			Spacer()
			
			Button(action: {}, label: {
				Image(systemName: "cart")
					.font(.title)
					.foregroundColor(.white)
			})
		} // HStack
	}
}


// MARK: - preview

struct NavigationBarDetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationBarDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
			.background(.gray)
	}
}
