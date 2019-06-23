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
    @IBOutlet weak var imgView : UIImageView!
    var images = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage.init(named: "cold.jpg")!, UIImage.init(named: "warm.jpeg")!]
        
        guard vacation != -1 else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        imgView.image = images[vacation]
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
