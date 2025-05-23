//
//  ContentView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 4/30/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - properties
	
	@EnvironmentObject var shop: Shop
	
	
	// MARK: - body
	
	var body: some View {
		ZStack {
			if shop.showingProduct == false && shop.selectedProduct == nil {
				VStack(spacing: 0) {
					NavigationBarView()
						.padding(.horizontal, 15)
						.padding(.bottom)
						.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
						.background(.white)
						.shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
					
					ScrollView(.vertical, showsIndicators: false) {
						VStack(spacing: 0) {
							FeaturedTabView()
								.padding(.vertical, 20)
								.frame(height: UIScreen.main.bounds.width / 1.475)
							
							CategoryGridView()
							
							TitleView(title: "Helmets")
							
							LazyVGrid(columns: gridLayout, spacing: 15) {
								ForEach(products) { item in
									
									ProductItemView(product: item)
										.onTapGesture {
											feedback.impactOccurred()
											withAnimation(.easeOut) {
												shop.selectedProduct = item
												shop.showingProduct = true
											}
										}
									
								} // ForEach
							} // LazyVGrid
							.padding(15)
							
							TitleView(title: "Brands")
							
							BrandGridView()
							
							FooterView()
								.padding(.horizontal)
						} // VStack
					} // ScrollView
					
				} // VStack
				.background(colorBackground.ignoresSafeArea(.all, edges: .all))
				
			} else {
				ProductDetailView()
			}
		} // ZStack
		.ignoresSafeArea(.all, edges: .top)
	}
}


// MARK: - preview

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.previewDevice("iPhone 16 Pro")
			.environmentObject(Shop())
	}
}
