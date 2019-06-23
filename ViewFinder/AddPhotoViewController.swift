//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Cheyenne Vlymen-Williams on 6/22/19.
//  Copyright © 2019 Cheyenne Vlymen-Williams. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var photo = UIImagePickerController()
    
    @IBOutlet weak var newPhoto: UIImageView!
   
    @IBOutlet weak var photoField: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.delegate = self
    }
    
    @IBAction func CameraButtonSelected(_ sender: Any) {
        
        photo.sourceType = .camera
        present(photo, animated:true, completion: nil)
    }
    
    @IBAction func LibraryButtonSelected(_ sender: Any) {
        
        photo.sourceType = .photoLibrary
        present(photo, animated:true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        //update photo with selected photo
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {newPhoto.image = selectedImage}
        
        //go back to our ViewController so the user can see the update
        photo.dismiss(animated: true, completion: nil)
    }
    @IBOutlet var captionText: UIView!
    
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        }
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Photos(entity: Photos.entity(), insertInto: context)
        }
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Photos(entity: Photos.entity(), insertInto: context)
            
            photoToSave.caption = captionText.text
        }
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Photos(entity: Photos.entity(), insertInto: context)
            
            photoToSave.caption = captionText.text
            
            if let userImage = newImageView.image {
                
                if let userImageData = UIImagePNGRepresentation(userImage) {
                    photoToSave.imageData = userImageData
                }
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        }
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Photos(entity: Photos.entity(), insertInto: context)
            
            photoToSave.caption = captionText.text
            
            if let userImage = newImageView.image {
                
                if let userImageData = UIImagePNGRepresentation(userImage) {
                    photoToSave.imageData = userImageData
                }
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            
            navigationController?.popViewController(animated: true)
        }
        
        
        
        
        
    }
}
