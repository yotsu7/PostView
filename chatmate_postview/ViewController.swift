//
//  ViewController.swift
//  chatmate_postview
//
//  Created by X-men on 2015/06/24.
//  Copyright (c) 2015年 TakamitsuYotsuyanagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
   
    @IBOutlet weak var postBtn: BaseButton!
    @IBOutlet weak var locationSwitch: BaseSwitch!
    @IBOutlet weak var titleTextField: BaseTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        postBtn.addTarget(self, action: "onClickPostBtn:", forControlEvents: .TouchUpInside)
        locationSwitch.addTarget(self, action: "onClickMySwicth:", forControlEvents: UIControlEvents.ValueChanged)
        titleTextField?.delegate = self
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onClickPostBtn(sender: UIButton) {
        postBtn.clickBtn()
    }
    internal func onClickMySwicth(sender: UISwitch) {
        if sender.on {
            locationSwitch.on()
        }
        else {
            locationSwitch.off()
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        println("\(textField.text)")
        
        // キーボードを閉じる
        textField.resignFirstResponder()
        
        return true
    }


}

