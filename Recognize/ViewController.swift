//
//  ViewController.swift
//  Recognize
//
//  Created by Kris Secor on 5/13/15.
//  Copyright (c) 2015 Kris Secor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapDetected(sender: AnyObject) {
        println("tapped")
        statusLabel.text = "Double Tapped"
    }
    
    @IBAction func longPressDetected(sender: UILongPressGestureRecognizer) {
        statusLabel.text = "Long press detected"

    }
    
    @IBAction func swipeDetected(sender: UISwipeGestureRecognizer) {
       println("swipe left")
    }
    
    @IBAction func pinchDetected(sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let velocity = sender.velocity
        let  resultString = "Pinch scale is \(scale), velocity is \(velocity)"
        statusLabel.text = resultString
    }
    
    
    
    @IBAction func rotationDetected(sender:UIRotationGestureRecognizer) {
        let radians = sender.rotation
        let velocity = sender.velocity
        let  resultString = "Rotation is \(radians), velocity is \(velocity)"
        statusLabel.text = resultString
        println(resultString)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

