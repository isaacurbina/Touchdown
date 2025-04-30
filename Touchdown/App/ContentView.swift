//
//  ContentView.swift
//  Touchdown
//
//  Created by Isaac Urbina on 4/30/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
    var body: some View {
        FooterView()
			.padding(.horizontal)
    }
}


// MARK: - preview

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.previewDevice("iPhone 16 Pro")
	}
}
