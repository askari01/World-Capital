//
//  ViewController.swift
//  World Capital
//
//  Created by Syed Askari on 24/01/2016.
//  Copyright © 2016 Syed Askari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    // MARK: UIPropertise
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    let data = [["USA", "China", "England", "Italy"], ["Beijing", "Washington, DC", "London", "Rome"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return data.count
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let item1 = data[0][pickerView.selectedRowInComponent(0)]
        let item2 = data[1][pickerView.selectedRowInComponent(1)]
        
        // Country Images
        let usa = UIImage(named: "usa.png")
        let china = UIImage(named: "china.png")
        let england = UIImage(named: "england.png")
        let italy = UIImage(named: "italy.png")
        
        // Capital Images
        let washington = UIImage(named: "washington.jpg")
        let beijing = UIImage(named: "beijing.jpg")
        let rome = UIImage(named: "rome.jpg")
        let london = UIImage(named: "london.jpg")
        
        let correct = "The capital of \(item1) is \(item2)."
        let wrong = "Match the Flag to the Capital"
        
        switch(item1){
            case "USA":
                image1.image = usa
                label1.text = item1
            case "China":
                image1.image = china
                label1.text = item1
            case "England":
                image1.image = england
                label1.text = item1
            case "Italy":
                image1.image = italy
                label1.text = item1
        default:
            image1.image = usa
            label1.text = item1

        }//END of switch 1
        
        switch(item2){
        case "Washington, DC":
            image2.image = washington
            label2.text = item2
            if label1.text == "USA" {
                label3.text = correct
            } else {
                label3.text = wrong
            }
        case "Beijing":
            image2.image = beijing
            label2.text = item2
            if label1.text == "China" {
                label3.text = correct
            } else {
                label3.text = wrong
            }
        case "London":
            image2.image = london
            label2.text = item2
            if label1.text == "England" {
                label3.text = correct
            } else {
                label3.text = wrong
            }
        case "Rome":
            image2.image = rome
            label2.text = item2
            if label1.text == "Italy" {
                label3.text = correct
            } else {
                label3.text = wrong
            }
        default:
            image2.image = washington
            label2.text = item2
            
        }//END of switch 2
        
    }
    

}

