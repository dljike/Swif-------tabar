//
//  ViewController.swift
//  SwifText
//
//  Created by mac on 16/4/19.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit



class ViewController:UIViewController, UITableViewDelegate {


    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "首页"
        
        self.view.backgroundColor = UIColor.grayColor()
  
  let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        
        button.addTarget(self, action: "tapAction", forControlEvents: UIControlEvents.TouchUpInside)
        
   
    }
    func tapAction(){
        let tow = TowViewController()
        self.navigationController?.pushViewController(tow, animated: true)
     
        
        
    }
   
    
 
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

