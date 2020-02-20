//
//  ViewController.swift
//  HW 2 Madlib - Niehenke
//
//  Created by Adam Niehenke on 2/19/20.
//  Copyright © 2020 Adam Niehenke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    // collect info
    
    @IBOutlet weak var nounOne: UITextField!
    @IBOutlet weak var nounTwo: UITextField!
    @IBOutlet weak var verb: UITextField!
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var adjectiveTwo: UITextField!
    
    
    @IBOutlet weak var output: UITextView!
    
    // push button to input the text
    
    @IBAction func activate(_ sender: Any) {
        
        // Output text to madlib
        output.text = "The " + adjective.text! + " " + nounOne.text! + " may " + verb.text! + " on the lake but my " + adjectiveTwo.text! + " " + nounTwo.text! + " owns the lake."
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Close keyboard with tap
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }


}

