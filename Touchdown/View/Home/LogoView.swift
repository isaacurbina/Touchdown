//
//  LogoView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/1/25.
//

import SwiftUI

struct LogoView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		HStack(spacing: 4) {
			Text("Touch".uppercased())
				.font(.title3)
				.fontWeight(.black)
				.foregroundColor(.black)
			
			Image("logo-dark")
				.resizable()
				.scaledToFit()
				.frame(width: 30, height: 30, alignment: .center)
			
			Text("Down".uppercased())
				.font(.title3)
				.fontWeight(.black)
				.foregroundColor(.black)
		} // HStack
	}
}


// MARK: - preview

struct LogoView_Previews: PreviewProvider {
	static var previews: some View {
		LogoView()
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
