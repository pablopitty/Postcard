//
//  ViewController.swift
//  Postcard
//
//  Created by Pablo Pitty on 6/28/15.
//  Copyright (c) 2015 Pablo Pitty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showNameLabel: UILabel!
    @IBOutlet weak var showMessageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMessageButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed() {
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        showMessageLabel.text = enterMessageTextField.text
        showNameLabel.text = enterNameTextField.text
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        showMessageLabel.textColor = UIColor.redColor()
        showNameLabel.textColor = UIColor.blueColor()
        
        showMessageLabel.hidden = false
        showNameLabel.hidden = false
        
        sendMessageButton.setTitle("Message Sent", forState: UIControlState.Normal)
    }
}