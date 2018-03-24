//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by AKIKO ITO on 2018/03/17.
//  Copyright © 2018年 ai.ueo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var na: String?

    @IBOutlet weak var buttonclick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonclick.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //textfieldを使う場合。
    
    @IBOutlet weak var errormsg: UILabel!
    @IBAction func valuechange(_ sender: Any) {
        na = (sender as! UITextField).text!
        
        //if na != nil || na != "" {
            //buttonclick.isEnabled = true
        //}
        //else {
            //buttonclick.isEnabled = false
        //}
        // ここで入力されている値を空白スペースはなくす処理をする
        na = na!.trimmingCharacters(in: NSCharacterSet.whitespaces)
        
        if na!.isEmpty || (na?.count)! > 10 {
            buttonclick.isEnabled = false
        }
        else {
            buttonclick.isEnabled = true
        }
        
        if (na?.count)! > 10 {
            errormsg.text = "10文字以内でお願いします"
            errormsg.textColor = UIColor.red
        }
        else {
            errormsg.text = ""
        }
    }

    //ボタンを押したとき。上のようにもできるけど。
    //@IBAction func button(_ sender: Any) {
        //na = textField.text!
    //}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController

        resultViewController.name = na
    }
    

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
    

}

