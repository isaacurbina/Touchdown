//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Isaac Urbina on 5/2/25.
//

import Foundation

struct Category: Codable, Identifiable {
	let id: Int
	let name: String
	let image: String
}
