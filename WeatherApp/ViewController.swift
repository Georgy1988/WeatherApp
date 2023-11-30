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
        // Do any additional setup after loading the view.
    }


}

