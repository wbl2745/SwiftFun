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
    
    /*
     I made this because I was using "NaN" to indicate a text input that
     was not a number, but "NaN" is in fact a "number" that is not a
     number. It would be added to other numbers resulting in "NaN".
    */
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
    
    // Here are move data fields connected to objects in the storyboard
    // All you can do is get and put text.
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    
    // A switch. Don't know a lot about this.
    @IBOutlet weak var additionSwitch: UISwitch!
    
    // Connected to the button and an action.
    @IBAction func buttonTapped(_ sender: Any) {
        
        // Capture whether addition or subtraction is chosen.
        let addition : Bool = additionSwitch.isOn
        
        // Flag error that would stop the operation
        var error : Bool = false
        
        var top : Double = Double.nan
        if let _topStr : String = topTextField.text {
            // It appears that checking the status of the topTextField is
            // unnecessary since even an empty field doesn't seem to occur
            // even if the field is empty. Using the debugger it appears
            // that an empty field returns a zero length string "".
            if let _top : Double = Double( _topStr ) {
                top = _top
            } else {
                topTextField.text = "Not a number"
                error = true
            }
        } else {
            topTextField.text = "Not a string"
            error = true
        }
        
        // Bypassing check for whether bottomTextField.text is nil
        var btm : Double = Double.nan
        if let _btm : Double = Double(bottomTextField.text!) {
            btm = _btm
        } else {
            bottomTextField.text = "Not a number"
            error = true
        }
        
        if !error {
            if addition {
                myLabel.text = "Answer: \(top + btm)"
            } else {
                myLabel.text = "Answer: \(top - btm)"
            }
        } else {
            myLabel.text = "There was an error"
        }
        
    } // buttonTapped()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    } // viewDidLoad()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // didReceiveMemoryWarning()

} // class ViewController

