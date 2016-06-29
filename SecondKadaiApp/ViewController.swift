//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by inoz on 2016/06/26.
//  Copyright © 2016年 yoshitaka.inoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    //ラベルのプロパティ宣言
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultViewController:ResultViewController  = segue.destinationViewController as! ResultViewController
        resultViewController.shimei = myTextField.text
        
    }
    

    @IBAction func unwind(segue: UIStoryboardSegue) {
        //他の画面からsegueをつかって戻ってきたときに呼ばれる
    }
    
    
}

