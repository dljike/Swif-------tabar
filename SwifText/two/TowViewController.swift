//
//  TowViewController.swift
//  SwifText
//
//  Created by mac on 16/4/19.
//  Copyright © 2016年 dubo. All rights reserved.
//

import UIKit

class TowViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    var collection :UICollectionView?
    var dataArr = NSMutableArray()
    
    
    lazy var imageArray: [String] = {
        
        var array: [String] = []
        
        for i in 1...20 {
            array.append("\(i)-1")
            NSLog("--------", array)
        }
        
        return array
    }()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "社区"
        self.view.backgroundColor = UIColor.blueColor()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical  //滚动方向
        layout.itemSize = CGSizeMake(100, 100) //设置所有cell的size  太重要了 找了半天。(自学就是辛苦呀！！)
        layout.minimumLineSpacing = 10.0  //上下间隔
        layout.minimumInteritemSpacing = 5.0 //左右间隔
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
//        layout.headerReferenceSize = CGSizeMake(20, 20)
//        layout.footerReferenceSize = CGSizeMake(20, 20)
        
        self.collection = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
        self.collection!.delegate = self
        self.collection!.dataSource = self
        self.view.addSubview(self.collection!)
        
        self.collection?.backgroundColor = UIColor.whiteColor()
        
        
 
        self.collection!.registerNib(UINib(nibName: "TwoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "coll")
//
//        
        
    }

    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
 
        let cell:TwoCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("coll", forIndexPath: indexPath) as! TwoCollectionViewCell
  
        cell.backgroundColor = UIColor.redColor()
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//         self.navigationController?.pushViewController(ThreePageViewController(), animated: true)
        
        self.presentViewController(ThreePageViewController(), animated: true) { () -> Void in
            
            
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
