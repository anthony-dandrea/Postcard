//
//  ViewController.swift
//  Postcard
//
//  Created by Anthony D'Andrea on 9/18/14.
//  Copyright (c) 2014 PWW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stupidLabel: UILabel!
    
    @IBOutlet weak var stupidNameTextField: UITextField!
    
    @IBOutlet weak var stupidKittehTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stupidSendButtonPressed(sender: UIButton) {
        stupidLabel.hidden = false
        stupidLabel.text = stupidKittehTextField.text
        stupidKittehTextField.text = ""
        stupidKittehTextField.resignFirstResponder()
        stupidLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

