//
//  Constant.swift
//  Touchdown
//
//  Created by Isaac Urbina on 4/30/25.
//

import SwiftUI

// data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

// color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
	return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// ux

let feedback = UIImpactFeedbackGenerator(style: .medium)

// api

// image

// font

// string

// misc
