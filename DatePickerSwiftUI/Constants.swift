//
//  Constants.swift
//  DatePickerSwiftUI
//
//  Created by Xeven Dev on 24/01/2024.
//

import Foundation
import SwiftUI
let corner: CGFloat = 5
let mediumCorner: CGFloat = 15.0
let extraLargeCorner: CGFloat = 30.0
//Font
let xLarge: Font = .system(size: 28)
let xxLarge: Font = .system(size: 36)
let extraLarge: Font = .largeTitle
let large: Font = .title
let medium: Font = .title2
let small: Font = .system(size: 18)
let mediumSmall: Font = .system(size: 15)
let extraSmall: Font = .caption

var screenWidth = UIScreen.main.bounds.width
var screenHeight = UIScreen.main.bounds.height
var columnSpacing: CGFloat = 4
var rowSpacing: CGFloat = 4

extension Color {
    static let bgColour = Color("bgc")
    static let appGreenColor = Color("appGreenColor")
    static let appBlueColor = Color("appBlueColor")
}
