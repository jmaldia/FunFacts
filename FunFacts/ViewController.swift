//
//  ViewController.swift
//  FunFacts
//
//  Created by Jon Maldia on 6/20/16.
//  Copyright © 2016 BoonSoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
//        if funFactLabel.text == "I am learning iOS Development!" {
//            funFactLabel.text = "I am awesome!"
//        } else {
//            funFactLabel.text = "I am learning iOS Development!"
//        }
        
        // old way of generating a random number
        //let factNumber: Int = Int(arc4random_uniform(10))
        
        let randomColor = ColorModel().getRandomColor()
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
        funFactLabel.text = factModel.getRandomFact()
        
    }
}

