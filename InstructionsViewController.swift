//
//  InstructionsViewController.swift
//  LifeSaver
//
//  Created by Michael Battista on 5/29/17.
//  Copyright © 2017 Steven Xu. All rights reserved.
//

import UIKit
import AVFoundation

class InstructionsViewController: UIViewController {
    

    
    @IBOutlet var stepLabel: UILabel!
    @IBOutlet var instructionsTextView: UITextView!
    @IBOutlet var imageView: UIImageView!
    
    
    @IBOutlet var imageLabel: UILabel!
    @IBOutlet var startTimerButton: UIButton!
    @IBOutlet var resetTimerButton: UIButton!
    
    @IBOutlet var continueButtonOutlet: UIButton!
    
    var player: AVAudioPlayer = AVAudioPlayer()

    
    var currentStep: Int = 1
    var cprTimer = Timer()
    var cprTimerInt: Int = 35
    
    var timerNumber = 0
    
    let redColor = UIColor(red:0.87, green:0.13, blue:0.13, alpha:1.0).cgColor
    let whiteColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0).cgColor
    
    var hasBeenCalled: Bool = false

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageLabel.isHidden = true
        startTimerButton.isHidden = true
        resetTimerButton.isHidden = true
        
        imageLabel.layer.backgroundColor = whiteColor
        currentStep = 1
        
        
        
        setInstructions()
    }
    
    
    
    
    @IBAction func backButton(_ sender: AnyObject) {
        print("backButton hit")
        cprTimer.invalidate()

        if currentStep == 1 {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "startScreen") as! ViewController
            print(2)
            self.present(vc, animated: true, completion: nil)
            print(3)
        }
        else {
            currentStep = currentStep - 1
            setInstructions()
        }
        
        if currentStep < category.count - 1 {
            continueButtonOutlet.setTitle("continue", for: .normal)
        }
    }

    
    @IBAction func continueButton(_ sender: AnyObject) {
        print("continueButton hit")
        print("currentStep is \(currentStep)")
        print("category.count is \(category.count)")
        cprTimer.invalidate()
        
        if currentStep < category.count - 1 {
            continueButtonOutlet.setTitle("continue", for: .normal)
            currentStep = currentStep + 1
            setInstructions()
            hasBeenCalled = false
            if currentStep == category.count - 1 {
                continueButtonOutlet.setTitle("finish", for: .normal)
            }
        }
        else {
            print("reached the end")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "startScreen") as! ViewController
            print(2)
            self.present(vc, animated: true, completion: nil)
        }
        

        
    }
    
    
    @IBAction func videoButton(_ sender: AnyObject) {
        print("reached video button")

        let videoInArray = category[0]
        
        let url = URL(string: videoInArray[0])!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    func setInstructions() {
        print("setInstructions called")

        print("currentStep is now \(currentStep)")
        
        
        let instructionsArray: [[String]] = category
//        print("the instructionsArray is : \(instructionsArray)")
        let infoArray = instructionsArray[currentStep]
//        print("the array for the current step is \(infoArray)")
        
        
        
        stepLabel.text = infoArray[0]
        stepLabel.numberOfLines = 1
        stepLabel.minimumScaleFactor = 0.1
        stepLabel.adjustsFontSizeToFitWidth = true
        
        if infoArray[1] == "gif" {
            imageView.loadGif(name: infoArray[2])
        }
        else {
            imageView.image = UIImage(named: infoArray[2])
        }
        
        if infoArray[3] == "timer35" {
            timerNumber = 35
            cprTimerInt = 35
            imageLabel.isHidden = false
            imageLabel.text = String(cprTimerInt)
            startTimerButton.isHidden = false
            resetTimerButton.isHidden = false
        }
        else if infoArray[3] == "timer100"{
            timerNumber = 100
            cprTimerInt = 100
            imageLabel.text = "100"
            imageLabel.isHidden = false
            startTimerButton.isHidden = false
            resetTimerButton.isHidden = false
        }
        else {
            imageLabel.isHidden = true
            startTimerButton.isHidden = true
            resetTimerButton.isHidden = true
        }
        
        
        instructionsTextView.text = infoArray[4]
        

    }

    
    
    
    @IBAction func startTimerButton(_ sender: AnyObject) {
        
        if hasBeenCalled == false {
            startTimer()
            hasBeenCalled = true
        }
    }
    
    @IBAction func resetTimerButton(_ sender: AnyObject) {
        cprTimer.invalidate()
        cprTimerInt = timerNumber
        imageLabel.text = String(cprTimerInt)
        hasBeenCalled = false
    }
    
    
    func startTimer() {
        cprTimer = Timer.scheduledTimer(timeInterval: 60/100, target: self, selector: #selector(InstructionsViewController.countdownTimer), userInfo: nil, repeats: true)
    }
    
    func countdownTimer() {
        
        if cprTimerInt > 0 {
            cprTimerInt = cprTimerInt - 1
            imageLabel.text = String(cprTimerInt)
            
            //plays the sound
            let audioPath = Bundle.main.path(forResource: "sound", ofType: "wav")!
            
            do{
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                player.prepareToPlay()
                player.play()
            }
            catch {
                print("went to catch - error!")
                // hopefully it never comes here
            }
            
            
            print("cprTimerInt is \(cprTimerInt)")
        }
        
        
    
        
        //suuposed to change teh color of the label every second that goes by
        // DOES NOT WORK RN
//        print("cprTimerInt is \(cprTimerInt)")
//        print("cprTimerInt % 2 == 0  is \(cprTimerInt % 2 == 0 )")
//
//        
//        if cprTimerInt % 2 == 0 {
//            imageLabel.layer.backgroundColor = redColor
//            print("redcolor)")
//        }
//        else {
//            imageLabel.layer.backgroundColor = whiteColor
//            print("whitecolor)")
//        }
//    }
    
    
    
    }
}
