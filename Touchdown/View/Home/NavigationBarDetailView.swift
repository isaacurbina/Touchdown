//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/3/25.
//

import SwiftUI

struct NavigationBarDetailView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		HStack {
			Button(action: {}, label: {
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
			.previewLayout(.sizeThatFits)
			.padding()
			.background(.gray)
	}
}
