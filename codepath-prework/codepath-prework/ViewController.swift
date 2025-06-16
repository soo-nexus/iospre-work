//
//  ViewController.swift
//  codepath-prework
//
//  Created by Jonathan Soo on 6/12/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBOutlet var textColorPicker: UIColorWell!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    @IBOutlet weak var jobField: UITextField!
    @IBOutlet weak var userResposne: UILabel!
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor {
                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)
        
                return UIColor(red:red, green:green, blue:blue, alpha:0.5)
            }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func submitField(_ sender: UIButton) {
        
            let name = (nameField.text == "") ? "Bob": nameField.text!
            let school = (schoolField.text == "") ? "MIT": schoolField.text!
            let job = (jobField.text == "") ? "Software Developer": jobField.text!
            userResposne.lineBreakMode = .byWordWrapping
            userResposne.textAlignment = .center
            userResposne.text = "Hi \(name), welcome to this app. I see that you go to \(school). That is a great school for your major. I hope you are managing well in school with your job as \(job)."
    }
    
    @IBAction func textRed(_ sender: UIButton) {
        
        userResposne.textColor = UIColor.red
    }
    @IBAction func textBlue(_ sender: UIButton) {
        userResposne.textColor = UIColor.blue
    }
    @IBAction func textGreen(_ sender: UIButton) {
        userResposne.textColor = UIColor.green
    }
}

