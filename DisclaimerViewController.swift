//
//  DisclaimerViewController.swift
//  LifeSaver
//
//  Created by Michael Battista on 6/6/17.
//  Copyright © 2017 Steven Xu. All rights reserved.
//

import UIKit

class DisclaimerViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        self.textView.setContentOffset(.zero, animated: false)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y >= scrollView.contentSize.height - scrollView.frame.size.height) {
            print( "View scrolled to the bottom" )
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
