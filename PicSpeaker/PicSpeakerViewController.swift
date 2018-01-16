//
//  PicSpeakerViewController.swift
//  PicSpeaker
//
//  Created by Rahul Dhiman on 16/01/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit
import AVFoundation

class PicSpeakerViewController: UIViewController {
    
    
    @IBOutlet weak var picture: UIImageView!
    
    @IBOutlet weak var textfieldview: UITextView!
    
    
    @IBOutlet weak var texttospeech: UIButton!
    
    
    var imageee:UIImage? = nil
    var textwith:String = ""
    
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.picture.layer.cornerRadius = 30
        self.textfieldview.layer.cornerRadius = 30
        self.picture.clipsToBounds = true
        self.textfieldview.clipsToBounds = true
        self.textfieldview.text = "My name is Rahul"
        
        if let image = imageee {
            self.picture.image = image
        }
    }

    @IBAction func TTS(_ sender: Any) {
        myUtterance = AVSpeechUtterance(string: self.textfieldview.text)
        myUtterance.rate = 0.3
        synth.speak(myUtterance)
        }
    
    @IBAction func cancel(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
}
