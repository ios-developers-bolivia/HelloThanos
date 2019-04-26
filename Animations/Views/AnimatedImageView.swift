//
//  AnimatedImageView.swift
//  Animations
//
//  Created by Pablo Cornejo on 4/25/19.
//  Copyright © 2019 Pablo Cornejo Pierola. All rights reserved.
//

import UIKit

class AnimatedImageView: UIImageView {

    lazy private var circlePath = UIBezierPath(ovalIn: bounds)
    lazy private var dotPath = UIBezierPath(ovalIn: CGRect(x: bounds.midX, y: bounds.midY, width: 0, height: 0))
    
    lazy private var maskLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.path = dotPath.cgPath
        return layer
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.mask = maskLayer
    }
    
    // MARK: - Public methods
    
    func animateMaskChange(hideThanos: Bool) {
        
        let animation = CABasicAnimation(keyPath: "path")
        animation.fromValue = hideThanos ? circlePath.cgPath : dotPath.cgPath
        animation.toValue = hideThanos ? dotPath.cgPath : circlePath.cgPath
        animation.duration = 0.4
        animation.isRemovedOnCompletion = false
        animation.fillMode = .forwards
        
        maskLayer.add(animation, forKey: nil)
    }

}
