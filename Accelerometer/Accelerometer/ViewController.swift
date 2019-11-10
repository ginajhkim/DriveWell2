//
//  ViewController.swift
//  Accelerometer
//
//  Created by Gina Kim on 2019-11-09.
//  Copyright © 2019 practice. All rights reserved.
//

import UIKit
import CoreMotion


class ViewController: UIViewController {
    
    @IBOutlet weak var xAccel: UITextField!
    @IBOutlet weak var yAccel: UITextField!
    @IBOutlet weak var zAccel: UITextField!
    @IBOutlet weak var counterDisplay: UITextField!
    @IBOutlet weak var counterLabel: UITextField!
    
    
    var motion = CMMotionManager()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myAccelerometer()
    }
    
    func myAccelerometer() {
        motion.accelerometerUpdateInterval = 0.2
        motion.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in print(data as Any)
            if let trueData = data {
                self.view.reloadInputViews()
                let x = trueData.acceleration.x
                let y = trueData.acceleration.y
                let z = trueData.acceleration.z
                
                
                self.xAccel!.text = "x: \(Double(x).rounded(toPlaces: 3))"
                self.yAccel!.text = "y: \(Double(y).rounded(toPlaces: 3))"
                self.zAccel!.text = "z: \(Double(z).rounded(toPlaces: 3))"
                self.counterDisplay!.text = "\(self.counter)"
                
                if trueData.acceleration.z > 1 {
                    self.view.backgroundColor = UIColor.red
                    self.counter += 1
                } else {
                    self.view.backgroundColor = UIColor.white
                }
            }
        }
        
        return
    }
    
}
    
// declaration outside of class
    extension Double {
        func rounded(toPlaces places:Int) -> Double {
              let divisor = pow(10.0, Double(places))
              return (self * divisor).rounded() / divisor
        }
    }



