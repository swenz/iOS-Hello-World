//
//  HelloViewController.swift
//  Hello Developer
//
//  Description: Describes a class of view controller that will allow the user
//                  to input their name and get a nice hello in return.
//
//               For now, every view in the storyboard should have its own
//                  class. We'll explore later on that this doesn't have to
//                  be true!
//
//  Created by Joe Durand on 9/26/16.
//  Copyright © 2016 Cal Poly App Dev. All rights reserved.
//


//IMPORT STATEMENTS*************************************************************
/** For anything beyond the basic features of Swift, we import frameworks.
    Frameworks are essentially toolboxes that contain lots of useful stuff!
    There are frameworks for talking to the internet, making games, even
    using the fingerprint scanner!
 
    For this intro app, we only need to import UIKit - which, as you may imply
    by the name, gives us access to user interace tools. All view controllers
    will use UIKit. */
import UIKit


//CLASS DECLERATION*************************************************************
/** Every view controller is a subclass of UIViewController, which is the
    fundamental view controller of Apple mobile apps. By subclassing
    UIViewController, we inherit all the functionality provided to us already - 
    which is more than most can imagine. */
class HelloViewController: UIViewController {
    
    
    //IBOUTLETS*****************************************************************
    /** When we (option + drag) from the Interface Builder (IB) to the view 
        controller, we can create a few different things, including IBOutlets. 
        These allow us to reference and control objects on the user interface.*/
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var helloButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    //VIEW DID LOAD*************************************************************
    /** viewDidLoad() is a very important function in a view controller's
        lifecycle. Once the view is created, the instructions given in
        viewDidLoad() will be executed. This is the place to do anything that
        needs to happen before the user interacts with the view - setting up
        text, turning things on, and the like.
 
        In this case, we will set up the nameField, helloButton, and
        messageLabel to make them usable. */
    override func viewDidLoad() {
        
        
        //HIGHER LEVEL THINGS***************************************************
        /** Because HelloViewController is a type of UIViewController, it
            does 'things' that UIViewController can do. Let's do those 'things'
            by calling super.viewDidLoad(): **/
        
        super.viewDidLoad()
        
        
        //SET UP THE NAME FIELD*************************************************
        /** Next, we will set up what is called placeholder text. Placeholder 
            text shows up as grey text in the text box before the user taps on 
            it to give them some context for what it's there for. 
            Let's set up some placeholder text: */
        
        nameField.placeholder = "Type your name in here."

        
        //SET UP THE BUTTON*****************************************************
        /** Personally, I don't click a button if I don't know what it does.
            Let's let the user know what the button is supposed to do by
            labelling it. This is similar to how we did it with the name field,
            but this uses a function instead of a variable: */
 
        helloButton.setTitle("Say Hello", for: .normal)
        
        
        //SET UP THE LABEL******************************************************
        /** Since we are still setting up the view in viewDidLoad(), we want the
            label to be blank - the user hasn't said hello yet! */
        
        messageLabel.text = ""
    }
    
    
    //IBACTION SET UP***********************************************************
    /** Like IBOutlet, IBAction is antoher type of connection we make to a
        storyboard. IBAction, however, doesn't link properties - it links
        ACTION! When a connected button is pressed - in this case, the hello
        button - the associated function is executed. This is where we tell
        the user hello! */
    @IBAction func helloButtonPressed(sender: UIButton) {
        
        
        //GET THE MESSAGE*******************************************************
        /** To tell the user hello, we have to set up what we want to say to
            them. It's a simple message - "Hello, NAME HERE!" Lets make the
            message now. */
        
        let messageForUser: String = "Hello, " + nameField.text! + "!"
        
        
        //GIVE THEM THE MESSAGE*************************************************
        /** Now that the message is ready to serve up, we can assign it to the
            messageLabel. After we assign the message, we call
            messageLabel.setNeedsDisplay() to make sure that the message is
            displayed as soon as it can. Otherwise, the app might try and do
            it later - more on this in a future workshop!*/
        
        messageLabel.text = messageForUser
        messageLabel.setNeedsDisplay()
    }
    
    
    //SIDENOTE: DID RECEIVE MEMORY WARNING**************************************
    /** While we won't do anything with this today, it's worth mentioning
        because every view controller comes with this function. If the view
        controller is getting too selfish with system resources, this function
        will be called to give the app a chance to fix the problem. */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

