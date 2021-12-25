//
//  StartViewController.swift
//  心理測驗APP
//
//  Created by 王昱淇 on 2021/12/24.
//

import UIKit
import AVKit

class StartViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        
    }
    
 
    @IBSegueAction func startQuestion(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> QuestionViewController? {
       QuestionViewController(coder: coder)
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
