//
//  FileDetailViewViewController.swift
//  CodePath wk1 Dropbox
//
//  Created by Yinan iMac on 2/6/16.
//  Copyright © 2016 YinanLearningSwift. All rights reserved.
//

import UIKit

class FileDetailViewViewController: UIViewController {

    //http://guides.codepath.com/ios/Using-NSUserDefaults
    var favorited = NSUserDefaults.standardUserDefaults()
    var alreadyFav = false
    
    @IBOutlet weak var favButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let boolValue = favorited.boolForKey("favoritedKey")
        if boolValue == false {
            print("file not fav")
            alreadyFav = false
            favButton.selected = false
        }else{
            print("file already fav")
            alreadyFav = true
            favButton.selected = true
        }
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
    
    @IBAction func onFavButtonTouchUpInside(sender: UIButton) {
        if sender.selected == false {
            //from no fav to fav
            sender.selected = true
            favorited.setBool(true, forKey: "favoritedKey")
            favorited.synchronize()
        } else {
            //from fav to no fav
            sender.selected = false
            favorited.setBool(false, forKey: "favoritedKey")
            favorited.synchronize()
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        favorited.synchronize()
    }
}
