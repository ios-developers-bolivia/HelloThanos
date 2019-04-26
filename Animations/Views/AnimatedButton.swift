//
//  AnimatedButton.swift
//  Animations
//
//  Created by Pablo Cornejo on 4/25/19.
//  Copyright © 2019 Pablo Cornejo Pierola. All rights reserved.
//

import UIKit

class AnimatedButton: UIButton {

    var buttonColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 10
        backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        setTitleColor(.white, for: .normal)
        
        addTarget(self, action: #selector(animateButtonPress), for: .touchDown)
        addTarget(self, action: #selector(animateButtonRelease), for: .touchUpInside)
        addTarget(self, action: #selector(animateButtonRelease), for: .touchDragOutside)
    }
    
    // MARK: - Private methods

    @objc private func animateButtonPress() {
        let scale: CGFloat = 0.9
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: scale, y: scale)
            self.alpha = 0.8
        }
    }
    
    @objc private func animateButtonRelease() {
        UIView.animate(withDuration: 0.2) {
            self.transform = .identity
            self.alpha = 1.0
        }
    }
    
}
