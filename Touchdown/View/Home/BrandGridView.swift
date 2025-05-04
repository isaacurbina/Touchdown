//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct BrandGridView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
				ForEach(brands) { item in
					BrandItemView(brand: item)
				}
			} // LazyHGrid
			.frame(height: 200)
			.padding(15)
		} // ScrollView
	}
}


// MARK: - preview

struct BrandGridView_Previews: PreviewProvider {
	static var previews: some View {
		BrandGridView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
	}
}
