//
//  CustomUtility.swift
//  CustomUtility
//
//  ユーティリティクラス
//
//  Created by yukichi on 2014/10/24.
//  Copyright (c) 2014年 hanoopy. All rights reserved.
//

import Foundation

class CustomUtility:NSObject {
    
    // 場所
    var mywhere:NSString = "大阪"
    
    // クラスを初期化
    override init() {
        println("初期化")
    }
    
    // 挨拶文を作成する
    func getGreet(who:NSString)-> NSString {
        var msg = " \(mywhere)の\(who)さん、こんにちは "
        return msg
    }
    
    // 提案動物を作成
    func getAnimalPlan()-> NSString {
        // 提案配列
        var plans = ["ヨークシャテリア", "ウサギ", "カピバラ", "ニシキヘビ"]
        // 乱数作成
        var rnd = Int(arc4random()) % plans.count
        var plan = plans[rnd]
        return plan
    }
}