//
//  ColorExtension.swift
//  Counder
//
//  Created by Sameer Nawaz on 05/03/21.
//

import SwiftUI

extension Color {
    
    static let main_color = Color("PastelBlueOne")
    static let main_secondary_color = Color.white
    static let primary_color = Color("PastelGreenDark")
    static let secondary_color = Color("PastelGreen")
    static let bubble_color = Color("PastelGreen")
    static let text_primary_color = Color.black
    
    init(hex: String, alpha: Double = 1) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) { cString.remove(at: cString.startIndex) }
        
        let scanner = Scanner(string: cString)
        scanner.currentIndex = scanner.string.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        self.init(.sRGB, red: Double(r) / 0xff, green: Double(g) / 0xff, blue:  Double(b) / 0xff, opacity: alpha)
    }
}
