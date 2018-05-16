//
//  ViewController.swift
//  Swift Fun
//
//  Created by William Lund on 5/12/18.
//  Copyright © 2018 Bill Lund. All rights reserved.
//
//  To create and link labels and buttons:
//      1) create the object in the Storyboard
//      2) Optionally deal with arrangement on the storyboard
//      3) Cntl-drag from the object in the storyboard to the ViewController
//          code.
//      4) For outlets, select outlet. For actions, select action.
//      5) Provide code.
//
//      You can see the linkages by selecting the object in the storyboard
//      and select the Connections Inspector.

import UIKit

class ViewController: UIViewController {
    
    let NaN : String = "Not a number"
    
    /*
     The following line of code was created by cntl dragging from a label
     in the Main.storyboard to this code. This also creates entries for the
     visual element in Referencing Outlets.
     
     You cannot rename this item. To do so requires deleting this line of
     code, deleting the referencing outlets, and cntl dragging from the label
     again.
     
     "@" means that @IBOutlet is an attribute of the variable which signals that
     the variable is visible and linked to the storyboard.
     
     "weak" means that the reference count to myLabel is not incremented by this
     reference. This also means that the code may need to reinstantiate the
     reference.
     
     UILabel is a type of a label in the storyboard.
    */
    @IBOutlet weak var myLabel : UILabel!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    @IBOutlet weak var additionSwitch: UISwitch!
    
    // Connected to the button and an action.
    @IBAction func buttonTapped(_ sender: Any) {
        
        let addition : Bool = additionSwitch.isOn
        if addition {
            myLabel.text = "Answer: \(Double(topTextField.text!)! + Double(bottomTextField.text!)!)"
        } else {
            myLabel.text = "Answer: \(Double(topTextField.text!)! - Double(bottomTextField.text!)!)"
        }
        
        
        
        
        
        /*
        if let topStr : String = topTextField.text {
            if let top : Double = Double(topStr) {
                if let btmStr : String = bottomTextField.text {
                    if let btm : Double = Double (btmStr) {
                        myLabel.text = "Answer: \(top + btm)"
                    } else {
                        bottomTextField.text = NaN
                        myLabel.text = ""
                    }
                } else {
                    bottomTextField.text = "Empty!"
                    myLabel.text = ""
                }
            } else {
                topTextField.text = NaN
                myLabel.text = ""
            }
        } else {
            topTextField.text = "Empty!"
            myLabel.text = ""
        }
         */
        
    } // buttonTapped()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    } // viewDidLoad()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

