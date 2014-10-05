//
//  ViewController.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 3/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var mainScrollView: UIScrollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.initSubviews();
        self.view.addSubview(mainScrollView!);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initSubviews() {
        var fm: CGRect = UIScreen.mainScreen().bounds
        
        self.mainScrollView = UIScrollView(frame:CGRectMake(0, 0, fm.size.width, fm.size.height))
        self.mainScrollView!.contentSize = CGSizeMake(self.mainScrollView!.frame.size.width, self.mainScrollView!.frame.size.height * 2)
        self.mainScrollView!.backgroundColor = UIColor.orangeColor()
        self.mainScrollView!.pagingEnabled = true
        self.mainScrollView!.bounces = false
        self.mainScrollView!.showsVerticalScrollIndicator = false;
        self.mainScrollView!.delegate = self
        
        // initialize coordinate views
        var coordinateView1 = CoordinateView(initialY: 0)
        var coordinateView2 = CoordinateView(initialY: self.mainScrollView!.frame.size.height)
        
        self.mainScrollView!.addSubview(coordinateView1)
        self.mainScrollView!.addSubview(coordinateView2)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        //println("scrolling...")
    }
}

