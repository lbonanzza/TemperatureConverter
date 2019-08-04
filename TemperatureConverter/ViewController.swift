//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by alekseykolesnik on 04/07/2019.
//  Copyright © 2019 alekseykolesnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLable: UILabel!
    @IBOutlet weak var fahrenheitLable: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
        
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let temperatureCelsius = Int(round(sender.value))
        celsiusLable.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLable.text = "\(temperatureFahrenheit)ºF"
    }


}

