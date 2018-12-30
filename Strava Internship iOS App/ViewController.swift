//
//  ViewController.swift
//  Strava Internship iOS App
//
//  Created by Dylan Cunningham on 12/27/18.
//  Copyright © 2018 Dylan Cunningham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var javaLabel: UILabel!
    @IBOutlet weak var cplusplusLabel: UILabel!
    @IBOutlet weak var htmlLabel: UILabel!
    @IBOutlet weak var cssLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        roundLabelCorners()
        
        //Setup for animations using UIKit
        swiftLabel.alpha = 0
        cLabel.alpha = 0
        javaLabel.alpha = 0
        cplusplusLabel.alpha = 0
        htmlLabel.alpha = 0
        cssLabel.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animateLabelsIn()
    }
    
    /* This function animates all the labels in programming skills section to be 1.2x the original size
    and be fully visible */
    func animateLabelsIn() {
        UIView.animate(withDuration: 1.25, delay: 0.75, options: [], animations: {
            self.swiftLabel.alpha = 1
            self.swiftLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            
            self.cLabel.alpha = 1
            self.cLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            
            self.javaLabel.alpha = 1
            self.javaLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            
            self.cplusplusLabel.alpha = 1
            self.cplusplusLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            
            self.htmlLabel.alpha = 1
            self.htmlLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            
            self.cssLabel.alpha = 1
            self.cssLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        })
    }
    
    // This function adds rounded corners for each of the labels in the programming skills section
    func roundLabelCorners() {
        swiftLabel.layer.cornerRadius = 15.0
        swiftLabel.layer.masksToBounds = true
        
        cLabel.layer.cornerRadius = 15.0
        cLabel.layer.masksToBounds = true
        
        javaLabel.layer.cornerRadius = 15.0
        javaLabel.layer.masksToBounds = true
        
        cplusplusLabel.layer.cornerRadius = 15.0
        cplusplusLabel.layer.masksToBounds = true
        
        htmlLabel.layer.cornerRadius = 15.0
        htmlLabel.layer.masksToBounds = true
        
        cssLabel.layer.cornerRadius = 15.0
        cssLabel.layer.masksToBounds = true
    }
}

