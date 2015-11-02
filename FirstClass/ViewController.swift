//
//  ViewController.swift
//  FirstClass
//
//  Created by wangxing on 15/10/23.
//  Copyright © 2015年 chinasap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!

    @IBOutlet weak var txtPassWord: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onclick(sender: AnyObject) {
        var result:String
        if(txtName.text=="zhangsan"&&txtPassWord.text=="123"){
            result="帐号和密码正确"
        }
        else{
            result="帐号或密码错误"
        }
        //创建提示框。title为提示标题，message为正文。preferredStyle为样式
        let alert=UIAlertController(title: "密码验证", message: result, preferredStyle: .Alert)
        //为提示框创建按钮
        let okAction = UIAlertAction(title: "确定", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(okAction)
        //显示提示框
        self.presentViewController(alert, animated: true, completion: nil)
        
    }

}

