//
//  ViewController.swift
//  count2
//
//  Created by 丸井一輝 on 2021/05/16.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    
    @IBOutlet var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func plus(){
         number = number + 1
        countLabel.text = String(number)
        
        judge()
    }
    @IBAction func minus(){
        number = number - 1
        countLabel.text = String(number)
        
        judge()
    }
    
    @IBAction func times(){
        number = number * 2
        countLabel.text = String(number)
        
        judge()
    }
    
    @IBAction func devided(){
        number = number / 2
        countLabel.text = String(number)
        
        judge()
    }
    
    func judge(){
        if number >= 10{
            countLabel.textColor = UIColor.red
        } else if number <= -10{
            countLabel.textColor = UIColor.blue
        } else {
            countLabel.textColor = UIColor.black
        }
            
    }


}

