//
//  PicSelectViewController.swift
//  PicSpeaker
//
//  Created by Rahul Dhiman on 15/01/18.
//  Copyright © 2018 Rahul Dhiman. All rights reserved.
//

import UIKit

class PicSelectViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var picView: UIImageView!
    @IBOutlet weak var gallery: UIButton!
    @IBOutlet weak var CameraView: UIButton!
    @IBOutlet weak var clear: UIButton!
    
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.picView.layer.cornerRadius = 50
        self.picView.clipsToBounds = true
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            CameraView.isEnabled = true
        }
        else{
            CameraView.isEnabled = false
        }
        self.clear.isHidden = true
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            picView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func pickIT(_ source: UIImagePickerControllerSourceType){
        let pickController = UIImagePickerController()
        pickController.delegate = self
        pickController.sourceType = source
        if source == .camera{
            pickController.cameraCaptureMode = .photo
            pickController.modalPresentationStyle = .fullScreen }
        self.present(pickController, animated: true,completion: nil)
    }
    
    
    @IBAction func PicFromGallery(_ sender: Any) {
        pickIT(.photoLibrary)
        self.clear.isHidden = false
    }
    
    @IBAction func PicFromCamer(_ sender: Any) {
        pickIT(.camera)
        self.clear.isHidden = false
    }
    
    @IBAction func cancelit(_ sender: Any) {
        
        self.picView.image = nil
        self.clear.isHidden = true
        
    }
    
}
