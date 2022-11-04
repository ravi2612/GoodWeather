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
    
    
    
    @IBAction func saveCityButtonPressed() {
        if let city = cityNameTextField.text {
            
            let weatherURL = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=ef53df87ac746c87522688ea82936184&units=metric")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                
                return data
            }
            WebService().load(resource: weatherResource) { result in 
            }
            
            
        }
    }
    
    @IBAction func close () {
            self.dismiss(animated: true, completion: nil)
        }
    
    
}
