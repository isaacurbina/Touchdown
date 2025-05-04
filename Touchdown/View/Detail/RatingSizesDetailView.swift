//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/4/25.
//

import SwiftUI

struct RatingSizesDetailView: View {
	
	
	// MARK: - properties
	
	private let sizes: [String] = ["XS", "S", "M", "L", "XL"]
	
	
	// MARK: - body
	
	var body: some View {
		HStack(alignment: .top, spacing: 3) {
			// ratings
			VStack(alignment: .leading, spacing: 3) {
				Text("Ratings")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(colorGray)
				
				HStack(alignment: .center, spacing: 3) {
					ForEach(1...5, id: \.self) { item in
						Button(action: {}) {
							Image(systemName: "star.fill")
								.frame(width: 28, height: 28, alignment: .center)
								.background(colorGray.cornerRadius(5)
									.foregroundColor(.white))
						}
					} // ForEach
				} // HStack
			} // VStack
			
			Spacer()
			
			//sizes
			VStack(alignment: .trailing, spacing: 3) {
				Text("Sizes")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(colorGray)
				
				HStack(alignment: .center, spacing: 5) {
					ForEach(sizes, id: \.self) { item in
						Button(action: {}) {
							Text(item)
								.font(.footnote)
								.fontWeight(.heavy)
								.foregroundColor(colorGray)
								.frame(width: 28, height: 28, alignment: .center)
								.background(Color.white.cornerRadius(5))
								.background(
									RoundedRectangle(cornerRadius: 5)
										.stroke(colorGray, lineWidth: 2)
								)
						}
					} // ForEach
				} // HStack
			} // Vstack
			
		} // HStack
	}
}


// MARK: - preview

struct RatingSizesDetailView_Previews: PreviewProvider {
	static var previews: some View {
		RatingSizesDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
