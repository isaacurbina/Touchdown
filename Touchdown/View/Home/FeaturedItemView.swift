//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/1/25.
//

import SwiftUI

struct FeaturedItemView: View {
	
	
	// MARK: - properties
	
	let player: Player
	
	
	// MARK: - body
	
	var body: some View {
		Image(player.image)
			.resizable()
			.scaledToFit()
			.cornerRadius(12)
	}
}


// MARK: - preview

struct FeaturedItemView_Previews: PreviewProvider {
	static var previews: some View {
		FeaturedItemView(player: players[0])
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
	}
}
