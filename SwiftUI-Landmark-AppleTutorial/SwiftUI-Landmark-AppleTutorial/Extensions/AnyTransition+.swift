//
//  AnyTransition+.swift
//  SwiftUI-Landmark-AppleTutorial
//
//  Created by kazunori.aoki on 2021/11/22.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        return .asymmetric(insertion: .move(edge: .trailing).combined(with: .opacity),
                           removal: .scale.combined(with: .opacity))
    }
}
