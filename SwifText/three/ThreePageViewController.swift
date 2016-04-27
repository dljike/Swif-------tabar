//
//  ThreePageViewController.swift
//  SwifText
//
//  Created by mac on 16/4/26.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

class ThreePageViewController: UIViewController,AlertDelegate {
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "我的"
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        let img = UIImageView(frame: CGRectMake(0, 0, 50, 50))
        img.image = UIImage(named: "s1")
        self.view.addSubview(img)
        
        let tap = UITapGestureRecognizer(target: self, action: "imgAction")
        img.userInteractionEnabled = true
        img .addGestureRecognizer(tap)
  
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        button .setTitle("正向傳值", forState: UIControlState.Normal)
        button.addTarget(self, action: "btn1Action", forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    
    /**
     第一種屬性傳值
     */
    func btn1Action(){
        let secondVC:LableViewController = LableViewController()
        secondVC.tmpString = "5,1馬上來臨了"
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

 
    
    
    
    
    func alert(controller: LableViewController, str: String) {
        
         let aller = UIAlertView(title: "提示", message: str, delegate: self, cancelButtonTitle: "取消")
        aller.show()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func imgAction(){
        
        if(self.navigationController?.viewControllers.count > 0){
             self.navigationController!.popViewControllerAnimated(true)
        }else{
            self .dismissViewControllerAnimated(true, completion: { () -> Void in
                
                
            })
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
