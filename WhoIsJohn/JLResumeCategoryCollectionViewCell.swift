//
//  JLResumeCategoryCollectionViewCell.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/26/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class JLResumeCategoryCollectionViewCell: UICollectionViewCell {
  
  var separatorView: UIView = {
    let separator = UIView()
    separator.backgroundColor = UIColor(red: 200/255.0, green: 199/255.0, blue: 204/255.0, alpha: 1)
    separator.translatesAutoresizingMaskIntoConstraints = false
    return separator
  }()
  
  let categoryLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = UIColor.white
    label.font = UIFont.systemFont(ofSize: 18)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = UIColor.init(red: 238/255, green: 51/255, blue: 91/255, alpha: 1.0)
    return label
  }()
  
  var category: String?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(separatorView)
    self.addSubview(categoryLabel)
    self.setNeedsUpdateConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    categoryLabel.text = category
  }
  
  override func updateConstraints() {
    let metrics = ["sidePadding": 15,
                   "separatorHeight": 0.5]
    let views = ["separatorView": separatorView,
                 "categoryLabel": categoryLabel]
    
    let categoryHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[categoryLabel]|",
                                                                       options: [],
                                                                       metrics: metrics,
                                                                       views: views)
    let separatorHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[separatorView]|",
                                                                        options: [],
                                                                        metrics: metrics,
                                                                        views: views)
    let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[separatorView(==separatorHeight)][categoryLabel]|",
                                                             options: [],
                                                             metrics: metrics,
                                                             views: views)
    
    self.addConstraints(separatorHorizontalConstraints)
    self.addConstraints(categoryHorizontalConstraints)
    self.addConstraints(verticalConstraints)
    super.updateConstraints()
  }
  
}
