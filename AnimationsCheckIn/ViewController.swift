//
//  ViewController.swift
//  AnimationsCheckIn
//
//  Created by Diego Estrella III on 1/28/19.
//  Copyright © 2019 Diego Estrella III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var game: UIButton!
    @IBOutlet weak var gameLogo: UILabel!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut) {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        }
    }
    
    @IBAction func toggleDuck(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    
    @IBAction func toggleLogo(_ sender: UIButton) {
        if game.imageView?.image == UIImage(named: "ps") {
            UIView.transition(with: game, duration: 1, options: [.transitionFlipFromRight], animations: {
                self.game.setImage(UIImage(named: "xbox"), for: .normal)
                self.gameLogo.text = "Xbox 360"
            })
        } else {
            UIView.transition(with: game, duration: 1, options: [.transitionFlipFromLeft], animations: {
                self.game.setImage(UIImage(named: "ps"), for: .normal)
                self.gameLogo.text = "PlayStation"
            })
        }
    }}

