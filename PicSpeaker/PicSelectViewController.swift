//
//  PicSelectViewController.swift
//  PicSpeaker
//
//  Created by Rahul Dhiman on 15/01/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit

class PicSelectViewController: UIViewController {

    
    @IBOutlet weak var picView: UIImageView!
    @IBOutlet weak var gallery: UIButton!
    @IBOutlet weak var CameraView: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.picView.layer.cornerRadius = 40
        self.picView.clipsToBounds = true
    
    }

   

}
