//
//  GalleryCell.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 4/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class GalleryCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
}