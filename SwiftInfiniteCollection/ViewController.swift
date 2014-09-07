//
//  ViewController.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 3/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    @IBOutlet var collectionView: UICollectionView!
    var dataArray: NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.loadImages()
        self.setupCollectionView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadImages() {
        var mainBundle: NSBundle = NSBundle.mainBundle()
        var myImages = mainBundle.pathsForResourcesOfType("jpg", inDirectory: nil)
        
        self.dataArray = myImages;
    }
    
    func setupCollectionView() {
        //self.collectionView.registerClass(GalleryCell.self, forCellWithReuseIdentifier:"GalleryCell")
        
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        flowLayout.itemSize = CGSizeMake(320, 548)
        
        self.collectionView.pagingEnabled = true
        self.collectionView.collectionViewLayout = flowLayout
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray!.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("GalleryCell", forIndexPath: indexPath) as GalleryCell
        
        cell.backgroundColor = UIColor.orangeColor()
        let imageName: String = self.dataArray?.objectAtIndex(indexPath.row) as NSString
        
        cell.imageView.image = UIImage(named: imageName)
        cell.imageView.contentMode = UIViewContentMode.ScaleAspectFit
        
        return cell
    }
}

