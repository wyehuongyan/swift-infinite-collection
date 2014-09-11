//
//  GalleryCell.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 4/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class GalleryCell: UICollectionViewCell {
    //@IBOutlet var imageView: UIImageView!
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}