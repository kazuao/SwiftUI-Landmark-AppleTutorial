//
//  Animation+.swift
//  SwiftUI-Landmark-AppleTutorial
//
//  Created by kazunori.aoki on 2021/11/22.
//

import SwiftUI

extension Animation {
    static func ripple(index: Int) -> Animation {
        return .spring(dampingFraction: 0.5)
            .speed(2)
            .delay(0.03 * Double(index))
    }
}
