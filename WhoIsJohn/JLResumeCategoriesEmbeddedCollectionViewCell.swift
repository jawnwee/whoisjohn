//
//  JLResumeCategoriesEmbeddedCollectionViewCell.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/26/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLResumeCategoriesEmbeddedCollectionViewCell: UICollectionViewCell {
  lazy var collectionView: IGListCollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    let view = IGListCollectionView(frame: .zero, collectionViewLayout: layout)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .white
    view.alwaysBounceVertical = false
    view.alwaysBounceHorizontal = true
    view.isScrollEnabled = false
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
    let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(10)-[collectionView]|", options: [], metrics: nil, views: views)
    
    self.addConstraints(horizontalConstraints)
    self.addConstraints(verticalConstraints)
    super.updateConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
