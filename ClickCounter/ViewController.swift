//
//  ViewController.swift
//  ClickCounter
//
//  Created by Rohit Gurnani on 21/05/15.
//  Copyright (c) 2015 Rohit Gurnani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label : UILabel!
    var label2 : UILabel!
    var bgcolor = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //creating ui elements without storyboards
        //        //creating the label
//        var label = UILabel()
//        label.frame = CGRectMake(150, 150, 50, 50)
//        label.text = "0"
//        
//        //creating another label
//        var label2 = UILabel()
//        label2.frame = CGRectMake(250, 150, 50, 50)
//        label2.text = "10"
//        
//        //creating the button
//        var button1 = UIButton()
//        button1.frame = CGRectMake(150, 250, 100, 100)
//        button1.setTitleColor(UIColor.blueColor() , forState: .Normal)
//        button1.setTitle("Increment", forState: .Normal)
//        
//        //creating the decrement button
//        var button2 = UIButton()
//        button2.frame = CGRectMake(250, 250, 100, 100)
//        button2.setTitle("Decrement", forState: .Normal)
//        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)
//        
//        //creating the background toggle button
//        var button3 = UIButton()
//        button3.frame = CGRectMake(250, 350, 100, 100)
//        button3.setTitleColor(UIColor.blueColor(), forState: .Normal)
//        button3.setTitle("Toggle", forState: .Normal)
//        
//        //adding the compnents to the views as a sub-view
//        self.view.addSubview(label)
//        self.view.addSubview(button1)
//        self.view.addSubview(label2)
//        self.view.addSubview(button2)
//        self.view.addSubview(button3)
//        
//        //making the connection of the view objects variables and local variables
//        self.label = label
//        self.label2 = label2
//        
//        //adding target actions to the view
//        button1.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
//        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
//        button3.addTarget(self, action: "toggleBgcolor", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }

    @IBAction func incrementCount()
    {
        self.count++
       // var count2 : Int = (self.label2.text!).toInt()!
        self.label.text = String(count)
     //   self.label2.text = String(++count2)
      //  println(++count2)
    }
    
    @IBAction func timepass()
    {
        println("hello")
    }
    
    func decrementCount()
    {
        self.count--
        var count2 = self.label2.text!.toInt()!
    //    self.label.text = String(count)
        self.label2.text = String(--count2)
        
    }
    
    func toggleBgcolor()
    {
        if bgcolor%2 == 1
        {
            self.view.backgroundColor = UIColor.orangeColor()
            
        }
        else
        {
            self.view.backgroundColor = UIColor.whiteColor()
        }
        bgcolor++
    }


}

