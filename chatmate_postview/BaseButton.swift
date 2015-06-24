//
//  BaseButton.swift
//  chatmate_postview
//
//  Created by X-men on 2015/06/24.
//  Copyright (c) 2015年 TakamitsuYotsuyanagi. All rights reserved.
//

import UIKit

class BaseButton: UIButton {
    required init(coder aDecoder: NSCoder)  {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 6
        self.backgroundColor = UIColor.blackColor()
    }
    func clickBtn(){
    }
}

