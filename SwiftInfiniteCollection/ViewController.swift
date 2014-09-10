//
//  ViewController.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 3/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet var collectionView: UICollectionView!
    var collectionView1: PieceCollection!
    var collectionView2: PieceCollection!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.collectionView1 = PieceCollection(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height/2), edgeInsets: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), bgColor: UIColor.purpleColor())
        
        self.collectionView2 = PieceCollection(frame: CGRect(x: 0, y: self.view.frame.height/2, width: self.view.frame.width, height: self.view.frame.height/2), edgeInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), bgColor: UIColor.orangeColor())
        
        self.view.addSubview(collectionView1)
        self.view.addSubview(collectionView2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

