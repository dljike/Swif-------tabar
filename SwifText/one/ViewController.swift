//
//  ViewController.swift
//  SwifText
//
//  Created by mac on 16/4/19.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit



class ViewController:UIViewController, UITableViewDelegate,UITableViewDataSource {

    var tableView = UITableView()
    let CellIdentifierNib = "Nib"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "首页"
        
        self.view.backgroundColor = UIColor.grayColor()
  
 
        
        self.tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Grouped)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
        
        self.tableView.registerNib(UINib(nibName: "OneTableViewCell", bundle: nil), forCellReuseIdentifier: CellIdentifierNib)
   
    }
 
    
      func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
        
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
   
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifierNib)
       
        cell?.selectionStyle = UITableViewCellSelectionStyle.None
        
        cell?.textLabel?.text = String(indexPath.row)
        
        return cell!
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.navigationController?.pushViewController(ThreePageViewController(), animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

