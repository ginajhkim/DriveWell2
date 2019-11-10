//
//  RankViewController.swift
//  Accelerometer
//
//  Created by Gina Kim on 2019-11-09.
//  Copyright © 2019 practice. All rights reserved.
//

import UIKit

class RankViewController: UIViewController {
    struct User{
         var name: String
         var score: Int
    }

//    @IBOutlet weak var first: UITextField!
//    @IBOutlet weak var second: UITextField!
    

    
    @IBOutlet weak var first1: UITextField!
   
    @IBOutlet weak var firstScore: UITextField!
    
    @IBOutlet weak var second: UITextField!
    
    @IBOutlet weak var secondScore: UITextField!
    
    let user1 = User(name: "Sherry", score: 100)
    let user2 = User(name: "Yuni", score: 93)


    override func viewDidLoad() {
        super.viewDidLoad()
        
        if user1.score > user2.score {
            self.first1.text = user1.name
            self.firstScore!.text = String(user1.score)
            self.second!.text = user2.name
            self.secondScore!.text = String(user2.score)
            
        } else {
            self.first1.text = user2.name
            self.firstScore!.text = String(user2.score)
            self.second!.text = user1.name
            self.secondScore!.text = String(user1.score)
        }
        

       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
