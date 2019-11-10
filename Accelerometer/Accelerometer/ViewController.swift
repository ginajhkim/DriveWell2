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
    
    @IBOutlet var startButton: UIView!
    @IBOutlet weak var xAccel: UITextField!
    @IBOutlet weak var yAccel: UITextField!
    @IBOutlet weak var zAccel: UITextField!
    
    
    var motion = CMMotionManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myAccelerometer()
    }
    
    
    func myAccelerometer() {
        motion.accelerometerUpdateInterval = 0.5
        motion.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in print(data as Any)
            if let trueData = data {
                self.view.reloadInputViews()
                let x = trueData.acceleration.x
                let y = trueData.acceleration.y
                let z = trueData.acceleration.z
                self.xAccel!.text = "x: \(Double(x).rounded(toPlaces: 3))"
                self.yAccel!.text = "x: \(Double(y).rounded(toPlaces: 3))"
                self.zAccel!.text = "x: \(Double(z).rounded(toPlaces: 3))"
            }
            
        }
        return
    }
    
    

}

extension Double {
    func rounded(toPlaces places:Int) -> Double {
          let divisor = pow(10.0, Double(places))
          return (self * divisor).rounded() / divisor
    }
    

    
}


