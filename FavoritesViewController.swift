//
//  FavoritesViewController.swift
//  CodePath wk1 Dropbox
//
//  Created by Yinan iMac on 2/6/16.
//  Copyright © 2016 YinanLearningSwift. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    //http://guides.codepath.com/ios/Using-NSUserDefaults
    var favorited = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var noneFavoritedImage: UIImageView!    
    @IBOutlet weak var oneFavoritedImage: UIImageView!
    
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

    //choose which image to show based if there's any file Favorited
    override func viewDidAppear(animated: Bool) {
        
        let boolValue = favorited.boolForKey("favoritedKey")
        
        if boolValue == false {
            print("no fav")
            self.noneFavoritedImage.alpha = 1
            self.oneFavoritedImage.alpha = 0
        }else{
            print("fav")
            self.noneFavoritedImage.alpha = 0
            self.oneFavoritedImage.alpha = 1
        }
    }
}
