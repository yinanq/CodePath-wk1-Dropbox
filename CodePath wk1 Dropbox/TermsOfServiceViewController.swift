//
//  TermsOfServiceViewController.swift
//  CodePath wk1 Dropbox
//
//  Created by Yinan iMac on 2/6/16.
//  Copyright © 2016 YinanLearningSwift. All rights reserved.
//

import UIKit

class TermsOfServiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTouchUpInside(sender: AnyObject) {
        //close modal with reverse animation:
        //tried this didn't work:
//        navigationController!.popViewControllerAnimated(true)
        //thanks to https://youtu.be/ET8d-jX0X3g?t=48m57s this works:
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
