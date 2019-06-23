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
    var vacation : Int = 1
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
        
        farenheitBtn.backgroundColor = UIColor.init(cgColor: celsiusBtn.layer.borderColor!)
        farenheitBtn.setTitleColor(UIColor.white, for: .normal)
    
    }
    
    @IBAction func celsiusSelected(_ sender: UIButton) {
        self.isFarenheit = false
        farenheitBtn.backgroundColor = self.view.backgroundColor
        farenheitBtn.setTitleColor(UIColor.init(cgColor: farenheitBtn.layer.borderColor!), for: .normal)
        
        farenheitBtn.layer.borderColor = farenheitBtn.titleColor(for: .normal)?.cgColor
        
        
        celsiusBtn.backgroundColor = UIColor.init(cgColor: celsiusBtn.layer.borderColor!)
        celsiusBtn.setTitleColor(UIColor.white, for: .normal)
    }
    
    

    @IBAction func valueChanged(_ sender: UISlider) {
        if !isFarenheit {
            let val = (slider.value - 32) * (5/9)
            tempField.text = "\(Int.init(val))° C"
        }
        else {
            tempField.text = "\(slider.value)° F"
        }
        if slider.value < 60 {
            vacation = 0
            slider.minimumTrackTintColor = winterColor
            slider.thumbTintColor = winterColor
            vacationBtn.backgroundColor = winterColor
        }
        else {
            vacation = 1
            slider.minimumTrackTintColor = summerColor
            slider.thumbTintColor = summerColor
            vacationBtn.backgroundColor = summerColor
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vacationVC = segue.destination as! VacationVC
        vacationVC.vacation = self.vacation
    }
    

}

