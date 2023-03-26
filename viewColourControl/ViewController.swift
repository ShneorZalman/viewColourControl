//
//  ViewController.swift
//  viewColourControl
//
//  Created by Zalman Zoteev on 24/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MainView: UIView!
    
    @IBOutlet var blueAmountLabel: UILabel!
    @IBOutlet var greenAmountLabel: UILabel!
    @IBOutlet var redAmountLabel: UILabel!
    
    
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func redSliderAction() {
        
        redAmountLabel.text = redSlider.value.formatted(.number.precision(.fractionLength(2)))
        changeColourView()
    }
    
    @IBAction func greenSliderAction() {
        greenAmountLabel.text = (greenSlider.value.rounded()).formatted()
        changeColourView()
    }
    
    @IBAction func blueSlidrAction() {
        blueAmountLabel.text = blueSlider.value.rounded().formatted()
        changeColourView()
    }
    
    private func changeColourView() {
        let redColour = redSlider.value
        MainView.backgroundColor = .init(red: CGFloat(redColour / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
}

