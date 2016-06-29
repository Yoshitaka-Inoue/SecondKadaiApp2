//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by inoz on 2016/06/26.
//  Copyright © 2016年 yoshitaka.inoue. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    //受け取るためのプロパティを宣言する
    var shimei:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //じょうきでは、ｘ，ｙを0と宣言していたが、
        //1画面目のViewControllerから遷移するときにprepareForSegueで
        //x,yの値をあらたに代入されたので両方共1が入っている
        let result = shimei
        label.text = "こんにちは、\(result)さん"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
