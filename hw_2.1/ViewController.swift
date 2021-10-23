//
//  ViewController.swift
//  hw_2.1
//
//  Created by Anna Ivanova on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var intensityRed: UILabel!
    @IBOutlet var intensityGreen: UILabel!
    @IBOutlet var intensityBlue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func rgbAction(_ sender: Any) {
        changeColor()
        intensityRed.text = String(format: "%.2f", redSlider.value)
        intensityGreen.text = String(format: "%.2f", greenSlider.value)
        intensityBlue.text =  String(format: "%.2f", blueSlider.value)
    }
    
}

