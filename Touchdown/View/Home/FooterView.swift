//
//  FooterView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 4/30/25.
//

import SwiftUI

struct FooterView: View {
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
    var body: some View {
		VStack(alignment: .center, spacing: 10) {
			Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(2)
			
			Image("logo-lineal")
				.renderingMode(.template)
				.foregroundColor(.gray)
				.layoutPriority(0)
			
			Text("Copyright © Isaac Urbina\nAll right reserved")
				.font(.footnote)
				.fontWeight(.bold)
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(1)
			
		} // VStack
		.padding()
    }
}


// MARK: - preview

struct FooterView_Previews: PreviewProvider {
	static var previews: some View {
		FooterView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
	}
}
