//
//  LableViewController.swift
//  SwifText
//
//  Created by mac on 16/4/27.
//  Copyright © 2016年 dubo. All rights reserved.
//
//    ___  _____   ______  __ _   _________      
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_|
//


import UIKit

/**
 *  代理
 */
protocol AlertDelegate:NSObjectProtocol{
    
    func alert(controller:LableViewController,str:String)
}


class LableViewController: UIViewController {
    
    var delegate:AlertDelegate?
    
  var tmpString: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let lable = UILabel(frame:  CGRectMake(100, 100, 200, 50))
        lable.text = self.tmpString
        lable.textAlignment = NSTextAlignment.Center
        self.view.addSubview(lable)
        
       
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        button .setTitle("返回", forState: UIControlState.Normal)
        button.addTarget(self, action: "tapAction", forControlEvents: UIControlEvents.TouchUpInside)
  
        
    }
  
    
    func tapAction(){
        
        if((delegate) != nil){
            delegate?.alert(self, str: "點我幹啥")
            self.navigationController?.popViewControllerAnimated(true)
        }
        
        
        
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
