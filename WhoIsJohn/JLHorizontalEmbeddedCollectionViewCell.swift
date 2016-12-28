//
//  HorizontalEmbeddedCollectionViewCell.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLHorizontalEmbeddedCollectionViewCell: UICollectionViewCell {
  lazy var collectionView: IGListCollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let view = IGListCollectionView(frame: .zero, collectionViewLayout: layout)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .white
    view.alwaysBounceVertical = false
    view.alwaysBounceHorizontal = true
    return view
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(collectionView)
    
    self.setNeedsUpdateConstraints()
  }
  
  override func updateConstraints() {
    let views = ["collectionView": collectionView]
    let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[collectionView]|", options: [], metrics: nil, views: views)
    let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[collectionView]|", options: [], metrics: nil, views: views)
    
    self.addConstraints(horizontalConstraints)
    self.addConstraints(verticalConstraints)
    super.updateConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
