//
//  ViewController.swift
//  The Light
//
//  Created by Ильшат Мухамедьянов on 11.10.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var colorRainbow = 0
    let device = AVCaptureDevice.default(for: AVMediaType.video)
    override var prefersStatusBarHidden: Bool{
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColor()
        // Do any additional setup after loading the view.
    }


    fileprivate func changeColor() {
        
        switch colorRainbow {
        case 0: view.backgroundColor = .red
        case 1: view.backgroundColor = .orange
        case 2: view.backgroundColor = .yellow
        case 3: view.backgroundColor = .green
        case 4: view.backgroundColor = .cyan
        case 5: view.backgroundColor = .blue
        case 6: view.backgroundColor = .purple
        default:
            view.backgroundColor = .red
        }
        
        //Если счетчик становиться равным 7 то обнулим его
        colorRainbow += 1
        if colorRainbow == 7 {
            colorRainbow = 0
        }

              do {
                try device?.lockForConfiguration()
                device?.torchMode = .on
                device?.unlockForConfiguration()

              } catch {
                print(error)
              }
    }
    
    @IBAction func buttonPressed() {
        changeColor()
    }
}

