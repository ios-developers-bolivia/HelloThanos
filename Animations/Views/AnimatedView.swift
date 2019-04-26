//
//  AnimatedView.swift
//  Animations
//
//  Created by Pablo Cornejo on 4/25/19.
//  Copyright © 2019 Pablo Cornejo Pierola. All rights reserved.
//

import UIKit

class AnimatedView: UIView {

    let centerLabel = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = .purple
        layer.cornerRadius = 20
        
        addCenterLabel()
    }
    
    // MARK: - Private methods
    
    private func addCenterLabel() {
        addSubview(centerLabel)
        centerLabel.textColor = .white
        centerLabel.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        centerLabel.text = "Hello, Thanos!"
        
        setupCenterLabelConstraints()
    }
    
    private func setupCenterLabelConstraints() {
        centerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            centerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            centerLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
    }
    
}
