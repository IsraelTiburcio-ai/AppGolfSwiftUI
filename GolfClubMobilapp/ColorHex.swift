//
//  ColorHex.swift
//  GolfClubMobilapp
//
//  Created by IsraelTiburcio on 14/10/24.
//

import Foundation

import SwiftUI

extension Color {
    init(hex: String) {
        let r, g, b: Double
        
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        switch hexSanitized.count {
        case 3: // RGB (12-bit)
            r = Double((rgb & 0xF00) >> 8) / 15.0
            g = Double((rgb & 0x0F0) >> 4) / 15.0
            b = Double(rgb & 0x00F) / 15.0
        case 6: // RGB (24-bit)
            r = Double((rgb & 0xFF0000) >> 16) / 255.0
            g = Double((rgb & 0x00FF00) >> 8) / 255.0
            b = Double(rgb & 0x0000FF) / 255.0
        default:
            r = 0; g = 0; b = 0 // Color negro por defecto
        }

        self.init(red: r, green: g, blue: b)
    }
}
