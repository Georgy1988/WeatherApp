//
//  ViewController.swift
//  WeatherApp
//
//  Created by Georgi on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearenttempatureLabel: UILabel!
    
    @IBOutlet weak var refreshButton: UIButton!
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let icon = WeatherIconManager.Rain.image
        let currentWeather = currentWeather (temperature: 10.0, appearentTemparature: 5.0, humidity: 30, pressure: 750, icon: icon)
        updateUIWith (currentWeather: currentWeather)
    }

        
    func updateUIWith (currentWeather: currentWeather) {
            
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.appearenttempatureLabel.text = currentWeather.appearenttempatureString
        self.humidityLabel.text = currentWeather.humidityString
        
        }
    }

