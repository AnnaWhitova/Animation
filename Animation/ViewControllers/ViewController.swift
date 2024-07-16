//
//  ViewController.swift
//  Animation
//
//  Created by Анна Белова on 15.07.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationInfoLabel: UILabel! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationInfoLabel.text  = animation.description
    }
    
    @IBOutlet var springAnimationView: SpringView!
    
    private var animation = Animation.animation
    
    @IBAction func startAnimation(_ sender: SpringButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.force = animation.force
        springAnimationView.curve = animation.curve
        springAnimationView.delay = animation.delay
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
        animationInfoLabel.text = animation.description
        
        springAnimationView.animateNext { [unowned self] in
            springAnimationView.animation = animation.preset
            springAnimationView.force = animation.force
            springAnimationView.curve = animation.curve
            springAnimationView.delay = animation.delay
            springAnimationView.duration = animation.duration
            springAnimationView.animate()
            
            animation = Animation.animation
            sender.setTitle("Run:\(animation.preset)", for: .normal)
        }
    }
}

