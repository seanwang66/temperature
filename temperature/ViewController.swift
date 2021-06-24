//
//  ViewController.swift
//  temperature
//
//  Created by Sean on 2021/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    func calculate(number: Float)->Float{
        let result:Float = (number*9/5)+32;
        return result
    }
    
    var sliderValue: Float = 0; //用來接收Slider的變數
    
    @IBOutlet weak var degreesCelsius: UILabel! //攝氏
    @IBOutlet weak var degreesFahrenheit: UILabel! //華氏
    
    @IBAction func valueChange(_ sender: UISlider) {
        //print(sender.value)
        sliderValue = sender.value //將Slider的值傳給sliderValue
        let finalResult:Float = calculate(number: sliderValue) //呼叫函數calculate
        degreesFahrenheit.text = "華氏"+String(format: "%.2f", finalResult)+"度" //顯示華氏結果
        degreesCelsius.text = "攝氏"+String(format: "%.2f", sender.value)+"度" //顯示攝氏結果
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

