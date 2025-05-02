//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/2/25.
//

import SwiftUI

struct CategoryGridView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
				Section(
					header: SectionView(rotateClockwise: false),
					footer: SectionView(rotateClockwise: true)
				) {
					ForEach(categories) { item in
						CategoryItemView(category: item)
					}
				} // ForEach
			} // LazyHGrid
			.frame(height: 140)
			.padding(.horizontal, 15)
			.padding(.vertical, 10)
		} // ScrollView
	}
}


// MARK: - preview

struct CategoryGridView_Previews: PreviewProvider {
	static var previews: some View {
		CategoryGridView()
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
	}
}
