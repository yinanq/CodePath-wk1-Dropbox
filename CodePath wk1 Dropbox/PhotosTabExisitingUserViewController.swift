//
//  PhotosTabExisitingUserViewController.swift
//  CodePath wk1 Dropbox
//
//  Created by Yinan iMac on 2/6/16.
//  Copyright © 2016 YinanLearningSwift. All rights reserved.
//

import UIKit

class PhotosTabExisitingUserViewController: UIViewController {

    @IBOutlet weak var photosScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        photosScrollView.contentSize = CGSize(width: 320, height: 725)
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

}
