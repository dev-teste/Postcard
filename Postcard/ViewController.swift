//
//  ViewController.swift
//  Postcard
//
//  Created by André Ramos on 28/01/15.
//  Copyright (c) 2015 Style2Me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Git hub test
        
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        enterNameTextField.text = "";
    }

}

