//
//  CoordinateView.swift
//  SwiftInfiniteCollection
//
//  Created by Yan Wye Huong on 13/9/14.
//  Copyright (c) 2014 Sprubix. All rights reserved.
//

import UIKit

class CoordinateView: UIView {
    var headView: PieceCollection!
    var torsoView: PieceCollection!
    var bottomView: PieceCollection!
    var feetView: PieceCollection!
    
    var headSpace: CGFloat = 0.17
    var torsoSpace: CGFloat  = 0.28
    var bottomSpace: CGFloat = 0.42
    var feetSpace: CGFloat = 0.13
    
    var fm: CGRect!
    
    init(initialY: CGFloat) {
        fm = UIScreen.mainScreen().bounds
        super.init(frame: CGRectMake(0, initialY, fm.size.width, fm.size.height))
        
        initPieces()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initPieces() {
        self.headView = PieceCollection(frame: CGRect(x: 0, y: 0, width: self.fm.size.width, height: self.fm.size.height * headSpace),
                                        edgeInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                                        bgColor: UIColor.purpleColor())
        
        self.torsoView = PieceCollection(frame: CGRect(x: 0, y: (self.fm.size.height * headSpace), width: self.fm.size.width, height: self.fm.size.height * torsoSpace),
                                         edgeInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                                         bgColor: UIColor.blueColor())
        
        self.bottomView = PieceCollection(frame: CGRect(x: 0, y: (self.fm.size.height * (headSpace + torsoSpace)), width: self.fm.size.width, height: self.fm.size.height * bottomSpace),
                                          edgeInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                                          bgColor: UIColor.redColor())
        
        self.feetView = PieceCollection(frame: CGRect(x: 0, y: (self.fm.size.height * (headSpace + torsoSpace + bottomSpace)), width: self.fm.size.width, height: self.fm.size.height * feetSpace),
                                        edgeInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                                        bgColor: UIColor.greenColor())
        
        self.addSubview(self.headView)
        self.addSubview(self.torsoView)
        self.addSubview(self.bottomView)
        self.addSubview(self.feetView)
    }
}
