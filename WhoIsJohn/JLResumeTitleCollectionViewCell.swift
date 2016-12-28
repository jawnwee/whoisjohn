//
//  JLResumeTitleCollectionViewCell.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/26/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class JLResumeTitleCollectionViewCell: UICollectionViewCell {
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = UIColor.white
    label.font = UIFont.boldSystemFont(ofSize: 40)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    return label
  }()
  
  var title: String?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(titleLabel)
    self.setNeedsUpdateConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel.text = title
  }
  
  override func updateConstraints() {
    let metrics = ["sidePadding": 15]
    let views = ["titleLabel": titleLabel]

    let titleHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[titleLabel]|",
                                                                    options: [],
                                                                    metrics: metrics,
                                                                    views: views)
    let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[titleLabel]|",
                                                             options: [],
                                                             metrics: metrics,
                                                             views: views)
    
    self.addConstraints(titleHorizontalConstraints)
    self.addConstraints(verticalConstraints)
    super.updateConstraints()
  }

}
