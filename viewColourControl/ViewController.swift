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
        MainView.layer.cornerRadius = 10
        changeColourView()
    }

    @IBAction func redSliderAction() {
        let red = redSlider.value / 255
        redAmountLabel.text = red.formatted(.number.precision(.fractionLength(2)))
        changeColourView()
    }
    
    @IBAction func greenSliderAction() {
        let green = greenSlider.value / 255
        greenAmountLabel.text = green.formatted(.number.precision(.fractionLength(2)))
        changeColourView()
    }
    
    @IBAction func blueSlidrAction() {
        let blue = blueSlider.value / 255
        blueAmountLabel.text = blue.formatted(.number.precision(.fractionLength(2)))
        changeColourView()
    }
    
    private func changeColourView() {
        MainView.backgroundColor = .init(red: CGFloat(redSlider.value / 255),
                                         green: CGFloat(greenSlider.value / 255),
                                         blue: CGFloat(blueSlider.value / 255),
                                         alpha: 1)
    }
}

