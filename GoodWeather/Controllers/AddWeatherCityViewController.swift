//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Ravi Navarro  on 13/09/21.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func close () {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveCityButtonPressed() {
        
    }
    
}
