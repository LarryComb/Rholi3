//
//  ImageViewController.swift
//  CocoaPodsTest_10_18
//
//  Created by Larry Combs on 12/6/15.
//  Copyright © 2015 Larry Combs. All rights reserved.
//

import UIKit

protocol ImageViewControllerDelegate: class {
    
    func imageViewControllerDidPressBackButton(controller: ImageViewController)
    
}

class ImageViewController: UIViewController {
    
    var image: UIImage?
    
    private var imageView: UIImageView!
    
    private var backButton: UIButton!
    
    weak var delegate: ImageViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor()
        
        imageView = UIImageView(frame: view.frame)
        imageView.contentMode = .ScaleAspectFit
        imageView.image = image
        self.view.addSubview(imageView)
        
        backButton = UIButton(frame: CGRectMake(10, 10, 50, 50))
        backButton.setTitle("X", forState: .Normal)
        backButton.setTitle("O", forState: UIControlState.Highlighted)
        backButton.addTarget(self, action: "didPressBackButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(backButton)
    }
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        delegate?.imageViewControllerDidPressBackButton(self)
    }
    
}
