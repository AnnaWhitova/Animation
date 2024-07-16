//
//  DataStore.swift
//  Animation
//
//  Created by Анна Белова on 15.07.2024.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animationPresets = AnimationPreset.allCases.map{"\($0)"}
    
    let animationCurves = AnimationCurve.allCases.map{"\($0)"}
    
    private init() {}
}
