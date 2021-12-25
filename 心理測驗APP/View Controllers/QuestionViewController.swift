//
//  QuestionViewController.swift
//  心理測驗APP
//
//  Created by 王昱淇 on 2021/12/23.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
  
    @IBOutlet var optionButtons: [UIButton]!
    
    var answerString: String = ""
    
    var index = 0 {
        didSet {
            questionLabel.text = questions[index].question
            optionButtons[0].setTitle(questions[index].option1, for: .normal)
            optionButtons[1].setTitle(questions[index].option2, for: .normal)
           
        }
    }
  
    
    let questions = [
        Question(question: "1. 你更喜歡？", option1: "獨處", option2:  "與他人相處"),
        Question(question: "2. 學習新鮮事物時，你更習慣？", option1: "瞭解概念與理論" , option2: "注重實際用途"),
        Question(question: "3. 當你在做決策時？", option1: "重視邏與公平", option2:  "重視感情與和睦"),
        Question(question: "4. 你的生活方式更傾向於？", option1: "先工作，再玩耍，做事著重結果", option2: "先玩耍，再工作，做事享受過程")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        index = 0
    }
    
    @IBAction func choseOption(_ sender: UIButton) {
       
        if sender.currentTitle == questions[0].option1 {
            answerString += "I"
        } else if sender.currentTitle == questions[0].option2 {
            answerString += "E"
        } else if sender.currentTitle == questions[1].option1 {
            answerString += "N"
        } else if sender.currentTitle == questions[1].option2 {
                answerString += "S"
        } else if sender.currentTitle == questions[2].option1 {
            answerString += "T"
        }  else if sender.currentTitle == questions[2].option2 {
                answerString += "F"
        } else if sender.currentTitle == questions[3].option1 {
                answerString += "J"
        } else if sender.currentTitle == questions[3].option2 {
            answerString += "P"
        }
        
        if index < (questions.count - 1) {
            index += 1
        } else if index == (questions.count - 1) {
            performSegue(withIdentifier: "showResult", sender: nil)
        }
        
    }
    
    @IBSegueAction func showResult(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ResultViewController? {
        ResultViewController(coder: coder, answerString: answerString)
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
