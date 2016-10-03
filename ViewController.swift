//
//  ViewController.swift
//  Food Tracker
//
//  Created by yichen.qian on 10/2/16.
//  Copyright © 2016 yichen.qian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,
        UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
        
        // vewController is now delegate for nameTextField
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    
        mealNameLabel.text = textField.text
    }
    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard
        nameTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // only allow photos to be picker, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
        
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Welcome to Yichen's Food Tracker"
        
    }


}

