//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/1/25.
//

import SwiftUI

struct FeaturedTabView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		TabView {
			ForEach(players) { player in
				FeaturedItemView(player: player)
					.padding(.top, 10)
					.padding(.horizontal, 15)
			}
		} // TabView
		.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
	}
}


// MARK: - preview

struct FeaturedTabView_Previews: PreviewProvider {
	static var previews: some View {
		FeaturedTabView()
			.previewLayout(.sizeThatFits)
			.background(.gray)
	}
}
