//
//  ViewController.swift
//  TestSegmentControlWithSwipe
//
//  Created by Anton Gorlov on 4/10/20.
//  Copyright © 2020 Anton Gorlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var firstContainer: UIView!
    @IBOutlet weak var secondContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(rightGesture(gesture:)))
        rightSwipe.direction = .right
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(leftGesture(gesture:)))
        leftSwipe.direction = .left
        self.view.addGestureRecognizer(rightSwipe)
        self.view.addGestureRecognizer(leftSwipe)
    }

    @objc func rightGesture(gesture:UISwipeGestureRecognizer){
        
        if gesture.direction == .right{
            
            UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.firstContainer.isHidden = false
                self.secondContainer.isHidden = true
                self.segmentControl.selectedSegmentIndex = 0
            })
        }
        print("rightGesture action")
    }
    
    @objc func leftGesture(gesture:UISwipeGestureRecognizer){
        
        if gesture.direction == .left{
            
            UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.firstContainer.isHidden = true
                self.secondContainer.isHidden = false
                self.segmentControl.selectedSegmentIndex = 1
            })
        }
    }
    
    
}

