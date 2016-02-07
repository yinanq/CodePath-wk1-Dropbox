//
//  SignInViewController.swift
//  CodePath wk1 Dropbox
//
//  Created by Yinan iMac on 2/6/16.
//  Copyright © 2016 YinanLearningSwift. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
//    //https://guides.codepath.com/ios/Registering-for-Keyboard-Events#step-6-move-uitextfield-back-when-keyboard-is-hidden
//    func keyboardWillShow(notification: NSNotification!) {
//    }
//    func keyboardWillHide(notification: NSNotification!) {
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emailField.becomeFirstResponder()
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
        navigationController!.popViewControllerAnimated(true)
    }
    
    @IBAction func onTapEmptyArea(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        signInButton.enabled = true
    }
}
