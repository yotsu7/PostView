//
//  BaseButton.swift
//  chatmate_postview
//
//  Created by X-men on 2015/06/24.
//  Copyright (c) 2015年 TakamitsuYotsuyanagi. All rights reserved.
//

import UIKit

class BaseSwitch: UISwitch {
    var GUL = GetUserLocation()
    required init(coder aDecoder: NSCoder)  {
        super.init(coder: aDecoder)
        self.on = false
    }
    func on(){
        GUL.GetUserLocation()
        println("on")
    }
    func off(){
        println("off")
    }
}

