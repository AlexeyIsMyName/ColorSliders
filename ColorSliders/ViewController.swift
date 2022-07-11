//
//  ViewController.swift
//  ColorSliders
//
//  Created by ALEKSEY SUSLOV on 11.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        updateUI()
    }
    
    @IBAction func sliderChanged() {
        updateUI()
    }
    
    private func updateUI() {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        redLabel.text = String(format: "%.2f", redColor)
        greenLabel.text = String(format: "%.2f", greenColor)
        blueLabel.text = String(format: "%.2f", blueColor)
        
        colorView.backgroundColor = UIColor(red: redColor,
                                            green: greenColor,
                                            blue: blueColor,
                                            alpha: 1.0)
    }
}
