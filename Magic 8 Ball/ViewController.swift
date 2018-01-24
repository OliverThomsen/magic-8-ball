//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Oliver Elleman Thomsen on 24/01/2018.
//  Copyright © 2018 Thomsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shakeBall()
    }
    @IBAction func onShakeButtonPressed(_ sender: UIButton) {
        shakeBall()
    }
    
    func shakeBall() {
        let randomNumber = Int(arc4random_uniform(5)) + 1
        ballImageView.image = UIImage(named: "ball\(randomNumber)")
        print(randomNumber)
    }
    
}

