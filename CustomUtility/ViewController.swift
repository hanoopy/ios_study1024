//
//  ViewController.swift
//  CustomUtility
//
//  Created by yukichi on 2014/10/24.
//  Copyright (c) 2014年 hanoopy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // テキストボックス：名前
    @IBOutlet weak var MyTextBox: UITextField!
    
    // 提案動物名
    @IBOutlet weak var AnimalPlan: UILabel!
    
    // 提案カウンタ
    var counter: UInt8 = 0
    
    // 選択した動物
    @IBOutlet weak var ResultDisplay: UILabel!
    
    // 自作クラスのオブジェクトを作成
    var cu = CustomUtility()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // 自作クラスの変数にアクセス
        self.cu.mywhere = "梅田"
    }

    // 送信ボタンを押す（名前を送信する）
    @IBAction func SendName(sender: UIButton) {
        // 挨拶文を作成
        var greet = self.cu.getGreet(self.MyTextBox.text)
        // コンソールに挨拶文をプリント
        print(greet)

    }
    
    // 提案を見る
    @IBAction func ShowPlan(sender: UIButton) {
        
        
        var plan = self.cu.getAnimalPlan()
        // 提案をラベルにセット
        self.AnimalPlan.text = plan
        if (self.counter > 2) {
            sender.enabled = false
            
        }
        
        self.counter++
        
    }
    
    // OKボタンを押す
    @IBAction func SelectAnimal(sender: UIButton) {
        self.ResultDisplay.text = self.AnimalPlan.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

