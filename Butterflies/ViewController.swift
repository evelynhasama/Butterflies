//
//  ViewController.swift
//  Butterflies
//
//  Created by Evelyn Hasama on 12/28/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var qod: UILabel!

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        image1.layer.cornerRadius = 15
        image2.layer.cornerRadius = 15
        image3.layer.cornerRadius = 15
    }


}

