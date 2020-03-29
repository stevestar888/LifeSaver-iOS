//
//  ViewController.swift
//  LifeSaver
//
//  Created by Michael Battista on 5/29/17.
//  Copyright © 2017 Steven Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cprButton: UIButton!
    
    @IBOutlet var adultCPRButton: UIButton!
    @IBOutlet var childCPRButton: UIButton!
    @IBOutlet var infantCPRButton: UIButton!
    @IBOutlet var handsCompOnlyCPRButton: UIButton!
    
    
    @IBOutlet var chokingButton: UIButton!
    
    @IBOutlet var adultChokingButton: UIButton!
    @IBOutlet var childChokingButton: UIButton!
    @IBOutlet var infantChokingButton: UIButton!
    
    //colors
    let borderColor = UIColor(red:0.00, green:0.28, blue:0.85, alpha:1.0).cgColor
    let blackColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0).cgColor
    
    var isActive: Bool = false
    var currentlySelected = ""
    
    
    override func viewDidLoad() {
        print("reached view did load")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initialButtonSetUp()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cprButton(_ sender: AnyObject) {
//        cprButton.layer.borderColor = blackColor
//        chokingButton.layer.borderColor = borderColor
        
        
        
        if isActive == false || currentlySelected == "choking" {
            showCPRButtons()
            hideChokingButtons()
            isActive = true
        }
        else {
            hideCPRButtons()
            isActive = false
        }
        
        currentlySelected = "cpr"
    }
    
    
    @IBAction func adultCPRButton(_ sender: AnyObject) {
        category = adultCPRInstructions
    }

    @IBAction func childCPRButton(_ sender: AnyObject) {
        category = childCPRInstructions
    }
    
    @IBAction func infantCPRButton(_ sender: AnyObject) {
        category = infantCPRInstructions
    }
    
    @IBAction func handsOnlyCPRButton(_ sender: AnyObject) {
        category = handsOnlyCPRInstructions
    }

    
    
    @IBAction func chokingButton(_ sender: AnyObject) {
//        chokingButton.layer.borderColor = blackColor
//        cprButton.layer.borderColor = borderColor
        if isActive == false || currentlySelected == "cpr" {
            showChokingButtons()
            hideCPRButtons()
            isActive = true
        }
        else {
            hideChokingButtons()
            isActive = false
        }
        
        currentlySelected = "choking"
    }
    

    @IBAction func adultChokingButton(_ sender: AnyObject) {
        category = adultChokingInstructions
    }

    @IBAction func childChokingButton(_ sender: AnyObject) {
        category = childChokingInstructions
    }
    
    @IBAction func infantChokingButton(_ sender: AnyObject) {
        category = infantChokingInstructions
    }

    
    
    func hideCPRButtons() {
        adultCPRButton.isHidden = true
        childCPRButton.isHidden = true
        infantCPRButton.isHidden = true
        handsCompOnlyCPRButton.isHidden = true
    }
    
    
    func hideChokingButtons() {
        adultChokingButton.isHidden = true
        childChokingButton.isHidden = true
        infantChokingButton.isHidden = true
    }
    
    func showCPRButtons() {
        adultCPRButton.isHidden = false
        childCPRButton.isHidden = false
        infantCPRButton.isHidden = false
        handsCompOnlyCPRButton.isHidden = false
    }
    
    func showChokingButtons() {
        adultChokingButton.isHidden = false
        childChokingButton.isHidden = false
        infantChokingButton.isHidden = false
    }
    
    func initialButtonSetUp() {
        chokingButton.layer.cornerRadius = 10.0
        chokingButton.layer.borderWidth = 2.0
        chokingButton.layer.borderColor = borderColor
        
        cprButton.layer.cornerRadius = 10.0
        cprButton.layer.borderWidth = 2.0
        cprButton.layer.borderColor = borderColor
        
//        handsCompOnlyCPRButton.titleLabel?.numberOfLines = 0
        handsCompOnlyCPRButton.titleLabel?.adjustsFontSizeToFitWidth = true
//        handsCompOnlyCPRButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        hideCPRButtons()
        hideChokingButtons()
        
    }
    
    
    

    
    
    
}

