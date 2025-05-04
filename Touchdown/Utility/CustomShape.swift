//
//  CustomShape.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/4/25.
//

import SwiftUI

struct CustomShape: Shape {
	
	
	// MARK: - path
	
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(
			roundedRect: rect,
			byRoundingCorners: [.topLeft, .topRight],
			cornerRadii: CGSize(width: 35, height: 35)
		)
		return Path(path.cgPath)
	}
}


// MARK: - preview

struct CustomShape_Previews: PreviewProvider {
	static var previews: some View {
		CustomShape()
			.previewLayout(.fixed(width: 428, height: 120))
			.padding()
	}
}
