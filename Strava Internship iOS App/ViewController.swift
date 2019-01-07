//
//  ViewController.swift
//  Strava Internship iOS App
//  This is an iOS App I have built to apply to Strava's summer 2019 iOS software development
//  internship program. The app has a few different sections describing my skills, experience,
//  and fit with Strava.
//
//  Created by Dylan Cunningham on 12/27/18.
//  Copyright © 2018 Dylan Cunningham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Programming Skills Labels
    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var javaLabel: UILabel!
    @IBOutlet weak var cplusplusLabel: UILabel!
    @IBOutlet weak var htmlLabel: UILabel!
    @IBOutlet weak var cssLabel: UILabel!
    
    //Personal Project Descriptions
    @IBOutlet weak var formDDescription: UILabel!
    @IBOutlet weak var heapDescription: UILabel!
    @IBOutlet weak var culturemeshDescription: UILabel!
    
    //Personal Project Buttons
    @IBOutlet weak var formDBTN: UIButton!
    @IBOutlet weak var heapBTN: UIButton!
    @IBOutlet weak var cultureBTN: UIButton!
    
    /*This function controls the formD button to highlight the button and make the description visible
      while also hiding the other descriptions. */
    @IBAction func formD(_ sender: UIButton) {
        formDDescription.isHidden = false
        heapDescription.isHidden = true
        culturemeshDescription.isHidden = true
        
        formDBTN.backgroundColor = UIColor(red: 255.0/255.0, green: 178.0/255.0, blue: 170.0/255.0, alpha: 1)
        heapBTN.backgroundColor = UIColor(red: 154.0/255.0, green: 218.0/255.0, blue: 255.0/255.0, alpha: 1)
        cultureBTN.backgroundColor = UIColor(red: 154.0/255.0, green: 218.0/255.0, blue: 255.0/255.0, alpha: 1)
    }
    
    /*This function controls the Heap Allocator button to highlight the button and make the description visible while also hiding the other descriptions. */
    @IBAction func heapAllocator(_ sender: UIButton) {
        formDDescription.isHidden = true
        heapDescription.isHidden = false
        culturemeshDescription.isHidden = true
    
        formDBTN.backgroundColor = UIColor(red: 154.0/255.0, green: 218.0/255.0, blue: 255.0/255.0, alpha: 1)
        heapBTN.backgroundColor = UIColor(red: 255.0/255.0, green: 178.0/255.0, blue: 170.0/255.0, alpha: 1)
        cultureBTN.backgroundColor = UIColor(red: 154.0/255.0, green: 218.0/255.0, blue: 255.0/255.0, alpha: 1)
    }
    
    /*This function controls the CultureMesh button to highlight the button and make the description visible
     while also hiding the other descriptions. */
    @IBAction func cultureMesh(_ sender: UIButton) {
        formDDescription.isHidden = true
        heapDescription.isHidden = true
        culturemeshDescription.isHidden = false
        
        formDBTN.backgroundColor = UIColor(red: 154.0/255.0, green: 218.0/255.0, blue: 255.0/255.0, alpha: 1)
        heapBTN.backgroundColor = UIColor(red: 154.0/255.0, green: 218.0/255.0, blue: 255.0/255.0, alpha: 1)
        cultureBTN.backgroundColor = UIColor(red: 255.0/255.0, green: 178.0/255.0, blue: 170.0/255.0, alpha: 1)
    }
    
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
        
        formDBTN.layer.cornerRadius = 10
        heapBTN.layer.cornerRadius = 10
        cultureBTN.layer.cornerRadius = 10
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
