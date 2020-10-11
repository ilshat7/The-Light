//
//  ViewController.swift
//  The Light
//
//  Created by Ильшат Мухамедьянов on 11.10.2020.
//

import UIKit

class ViewController: UIViewController {
    var isLight = false

    override func viewDidLoad() {
        super.viewDidLoad()
        changeLight()
        // Do any additional setup after loading the view.
    }


    fileprivate func changeLight() {
        if isLight {
            view.backgroundColor = .white
        } else{
            view.backgroundColor = .black
        }
    }
    
    @IBAction func buttonPressed() {
        isLight.toggle()
        changeLight()
    }
}

