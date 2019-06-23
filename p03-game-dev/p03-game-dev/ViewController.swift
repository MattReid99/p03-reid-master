//
//  ViewController.swift
//  p03-game-dev
//
//  Created by Matthew Reid on 6/18/19.
//  Copyright © 2019 Matthew Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var celsiusBtn: UIButton!
    @IBOutlet weak var farenheitBtn: UIButton!
    @IBOutlet weak var tempField: UITextField!
    @IBOutlet weak var vacationBtn: UIButton!

    
    var winterColor : UIColor?
    var summerColor : UIColor?
    var vacation : Int = -1
    var isFarenheit : Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempField.delegate = self
        
        summerColor = slider.minimumTrackTintColor
        winterColor = slider.tintColor
    }
    
    @IBAction func farenheitSelected(_ sender: UIButton) {
        self.isFarenheit = true
        celsiusBtn.backgroundColor = self.view.backgroundColor
        celsiusBtn.setTitleColor(UIColor.init(cgColor: celsiusBtn.layer.borderColor!), for: .normal)
    
    }
    
    @IBAction func celsiusSelected(_ sender: UIButton) {
        self.isFarenheit = false
        farenheitBtn.backgroundColor = self.view.backgroundColor
        farenheitBtn.setTitleColor(UIColor.init(cgColor: farenheitBtn.layer.borderColor!), for: .normal)
        
        
        celsiusBtn.backgroundColor = UIColor.init(cgColor: celsiusBtn.layer.borderColor!)
        celsiusBtn.setTitleColor(UIColor.white, for: .normal)
    }
    
    

    @IBAction func valueChanged(_ sender: UISlider) {
        if !isFarenheit {
            let val = (slider.value - 32) * (5/9)
            tempField.text = "\(val)"
        }
        if isFarenheit {
            if slider.value < 60 {
                slider.value = 0
                slider.minimumTrackTintColor = winterColor
                slider.thumbTintColor = winterColor
             }
        else {
                slider.value = 1
                slider.minimumTrackTintColor = summerColor
                slider.thumbTintColor = summerColor
            }
        }
    }
    

}

