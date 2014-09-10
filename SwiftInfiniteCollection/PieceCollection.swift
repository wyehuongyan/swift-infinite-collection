//
//  PieceCollection.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 10/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class PieceCollection: UICollectionView, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    var dataArray: Array<String> = Array<String>()
    var pieceFrame: CGRect!
    var pieceInsets: UIEdgeInsets!
    var bgColor: UIColor!
    
    init(frame: CGRect, edgeInsets: UIEdgeInsets, bgColor: UIColor) {
        self.pieceInsets = edgeInsets
        self.pieceFrame = frame
        self.bgColor = bgColor
        
        super.init(frame: frame, collectionViewLayout: self.setupCollectionView())
        
        self.backgroundColor = UIColor.whiteColor()
        self.dataSource = self
        self.delegate = self
        
        self.loadImages()
    }
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    func loadImages() {
        var mainBundle: NSBundle = NSBundle.mainBundle()
        var myImages = mainBundle.pathsForResourcesOfType("jpg", inDirectory: nil) as Array<String>
        
        self.dataArray = myImages
    }
    
    func setupCollectionView() -> UICollectionViewFlowLayout {
        self.registerClass(GalleryCell.self, forCellWithReuseIdentifier:"GalleryCell")
        
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        flowLayout.sectionInset = self.pieceInsets
        flowLayout.itemSize = CGSizeMake(self.pieceFrame.width, self.pieceFrame.height - self.pieceInsets.top)
        
        self.pagingEnabled = true
        
        return flowLayout
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return self.dataArray.count
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("GalleryCell", forIndexPath: indexPath) as GalleryCell
        
        cell.backgroundColor = bgColor
        let imageName: String = self.dataArray[indexPath.row] as NSString
        
        cell.imageView.image = UIImage(named: imageName)
        
        return cell
    }
}