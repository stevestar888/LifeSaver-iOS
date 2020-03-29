//
//  CreditsViewController.swift
//  LifeSaver
//
//  Created by Michael Battista on 5/31/17.
//  Copyright © 2017 Steven Xu. All rights reserved.
//

import UIKit
import Social
import MessageUI


class CreditsViewController: UIViewController, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func twitterButton(_ sender: AnyObject) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            
            let twitter:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            twitter.setInitialText("I'm ready to save a life with @Lifesaver_app, which gives emergency instructions for CPR & Heimlich Maneuver—Link: bit.ly/LifeSaverApp")
            
            self.present(twitter, animated: true, completion: nil)
        }
        else {
            
            let alert = UIAlertController(title: "Accounts", message: "You're not logged on. Please try to log in through the settings.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func fbButton(_ sender: AnyObject) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
            
            let facebook:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebook.setInitialText("I'm prepared to save a life at any moment with the LifeSaver App, which gives emergency instructions for CPR & the Heimlich Maneuver. Link to download: bit.ly/LifeSaverApp")
            
            self.present(facebook, animated: true, completion: nil)
        }
        else {
            
            let alert = UIAlertController(title: "Accounts", message: "You're not logged on. Please try to log in through the settings.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func smsButton(_ sender: AnyObject) {
        if MFMessageComposeViewController.canSendText() {
            
            let message:MFMessageComposeViewController = MFMessageComposeViewController()
            
            message.messageComposeDelegate = self
            
            message.recipients = nil
            message.body = "I'm prepared to save a life at any moment with the LifeSaver App, which gives emergency instructions for CPR & the Heimlich Maneuver. Link to download: bit.ly/LifeSaverApp"
            
            self.present(message, animated: true, completion: nil)
            
            
        } else {
            
            let alert = UIAlertController(title: "Warning", message: "This device can not send SMS messages", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func emailButton(_ sender: AnyObject) {
        if MFMailComposeViewController.canSendMail() {
            
            let mail:MFMailComposeViewController = MFMailComposeViewController()
            
            mail.mailComposeDelegate = self
            
            mail.setToRecipients(nil)
            mail.setSubject("Check out this LifeSaving App!")
            mail.setMessageBody("I'm prepared to save a life at any moment with the LifeSaver App, which gives emergency instructions for CPR & the Heimlich Maneuver. Link to download: bit.ly/LifeSaverApp", isHTML: false)
            
            self.present(mail, animated: true, completion: nil)
            
            
        } else {
            
            let alert = UIAlertController(title: "Accounts", message: "You're not logged on. Please try to log in through the settings.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            
        }
    }
 
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    @IBAction func followLifeSaverOnTwitter(_ sender: AnyObject) {
        let url = URL(string: "https://twitter.com/lifesaver_app")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    
    @IBAction func followLifeSaverOnFB(_ sender: AnyObject) {
        let url = URL(string: "https://www.facebook.com/LifeSaver-App-1334270756686903/")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    
    @IBAction func leaveARating(_ sender: AnyObject) {
        let url = URL(string: "https://itunes.apple.com/us/app/lifesaver-emergency-steps-for-cpr-choking/id1244580286?ls=1&mt=8")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
}


