//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/1/25.
//

import SwiftUI

struct NavigationBarView: View {
	
	
	// MARK: - properties
	
	@State private var isAnimated: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		HStack {
			Button(action: {}, label: {
				Image(systemName: "magnifyingglass")
					.font(.title)
					.foregroundColor(.black)
			})
			
			Spacer()
			
			LogoView()
				.opacity(isAnimated ? 1 : 0)
				.offset(x: 0, y: isAnimated ? 0 : -25)
				.onAppear(perform: {
					withAnimation(.easeOut(duration: 0.5)) {
						isAnimated.toggle()
					}
				})
			
			Spacer()
			
			Button(action: {}, label: {
				ZStack {
					Image(systemName: "cart")
						.font(.title)
						.foregroundColor(.black)
					
					Circle()
						.fill(.red)
						.frame(width: 14, height: 14, alignment: .center)
						.offset(x: 13, y: -10)
				} // ZStack
			})
		} // HStack
	}
}


// MARK: - preview

struct NavigationBarView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationBarView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
