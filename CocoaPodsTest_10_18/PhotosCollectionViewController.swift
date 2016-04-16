//
//  PhotosCollectionViewController.swift
//  R.HOLI
//
//  Created by LARRY COMBS on 4/9/16.
//  Copyright © 2016 Larry Combs. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeGesture.direction = .Right
        view.addGestureRecognizer(swipeGesture)
    }

    func swiped(gesture:UISwipeGestureRecognizer) {
        self.navigationController?.popViewControllerAnimated(true)
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
