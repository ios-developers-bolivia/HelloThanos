//
//  ViewController.swift
//  Animations
//
//  Created by Pablo Cornejo on 4/25/19.
//  Copyright © 2019 Pablo Cornejo Pierola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatedViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var animatedImageView: AnimatedImageView!
    
    private var isAnimatedViewVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animatedViewBottomConstraint.constant = -400
    }
    
    
    @IBAction func didTapButton(_ sender: AnimatedButton) {
        
        self.animatedViewBottomConstraint.constant = isAnimatedViewVisible ? -400 : 20

        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.view.layoutIfNeeded()
            self.view.backgroundColor = self.isAnimatedViewVisible ? .white : .black
        }, completion: nil)
        
        animatedImageView.animateMaskChange(hideThanos: isAnimatedViewVisible)
        
        isAnimatedViewVisible.toggle()
    }
    

}

