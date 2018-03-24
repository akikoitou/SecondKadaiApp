//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by AKIKO ITO on 2018/03/17.
//  Copyright © 2018年 ai.ueo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = "こんにちは、\(name!)さん"
    
        //////太字にする設定////
        let attrText = NSMutableAttributedString(string: label.text!)
        //フォントサイズ、太字にする文字位置を設定
        attrText.addAttribute(NSAttributedStringKey.font, value: UIFont.boldSystemFont(ofSize: 30), range: NSMakeRange(6, (name?.count)!))
        
        //装飾したことをlabelに設定
        label.attributedText = attrText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
