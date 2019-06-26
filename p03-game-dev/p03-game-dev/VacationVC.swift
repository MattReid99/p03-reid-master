//
//  VacationVC.swift
//  p03-game-dev
//
//  Created by Matthew Reid on 6/23/19.
//  Copyright © 2019 Matthew Reid. All rights reserved.
//

import UIKit

class VacationVC: UIViewController {
    
    var vacation : Int = -1
    var temperature : Int = -1
    var mode : Character = "n"
    @IBOutlet weak var imgView : UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    var images = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage.init(named: "cold.jpg")!, UIImage.init(named: "warm.jpeg")!]
        
        guard vacation != -1 && temperature != -1 && mode != "n" else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        temperatureLabel.text = "It is \(self.temperature)°  \(self.mode) outside"
        imgView.image = images[vacation]
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
