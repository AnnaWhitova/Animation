//
//  Animation.swift
//  Animation
//
//  Created by Анна Белова on 15.07.2024.
//

import Foundation

struct Animation: CustomStringConvertible {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration:\(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
   static var animation: Animation {
        Animation(
            preset: DataStore.shared.animationPresets.randomElement() ?? "",
            curve: DataStore.shared.animationCurves.randomElement() ?? "",
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 0.5...2),
            delay: Double.random(in: 0.5...2)
        )
    }
}
