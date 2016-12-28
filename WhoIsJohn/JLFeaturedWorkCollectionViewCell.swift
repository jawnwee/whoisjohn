//
//  JLFeaturedWorkCollectionViewCell.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class JLFeaturedWorkCollectionViewCell: UICollectionViewCell {
  
  var separatorView: UIView = {
    let separator = UIView()
    separator.backgroundColor = UIColor(red: 200/255.0, green: 199/255.0, blue: 204/255.0, alpha: 1)
    separator.translatesAutoresizingMaskIntoConstraints = false
    return separator
  }()
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = UIColor.white
    label.font = UIFont.systemFont(ofSize: 15)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = UIColor.init(red: 238/255, green: 51/255, blue: 91/255, alpha: 1.0)
    return label
  }()
  
  let subtitleLabel: UILabel = {
    let subtitleLabel = UILabel()
    subtitleLabel.backgroundColor = UIColor.white
    subtitleLabel.font = UIFont.systemFont(ofSize: 18)
    subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
    subtitleLabel.textColor = UIColor.black
    return subtitleLabel
  }()
  
  let dateLabel: UILabel = {
    let subtitleLabel = UILabel()
    subtitleLabel.backgroundColor = UIColor.white
    subtitleLabel.font = UIFont.systemFont(ofSize: 12)
    subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
    subtitleLabel.textColor = UIColor.gray
    return subtitleLabel
  }()
  
  let featuredWorkImage: UIImageView = {
    let featuredWorkImage = UIImageView()
    featuredWorkImage.translatesAutoresizingMaskIntoConstraints = false
    featuredWorkImage.layer.cornerRadius = 5.0
    featuredWorkImage.clipsToBounds = true
    featuredWorkImage.contentMode = .scaleAspectFill
    return featuredWorkImage
  }()
  
  var title: String?
  var subtitle: String?
  var image: UIImage?
  var date: String?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(separatorView)
    contentView.addSubview(titleLabel)
    contentView.addSubview(subtitleLabel)
    contentView.addSubview(dateLabel)
    contentView.addSubview(featuredWorkImage)
    self.setNeedsUpdateConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    titleLabel.text = title
    subtitleLabel.text = subtitle
    dateLabel.text = date
    featuredWorkImage.image = image
  }
  
  override func updateConstraints() {
    let metrics = ["separatorLineHeight": 0.5,
                   "titleLabelHeight": 20,
                   "subtitleLabelHeight": 20,
                   "dateLabelHeight": 20,
                   "sidePadding": 15,
                   "verticalPadding": 10]
    let views = ["separatorView": separatorView,
                 "titleLabel": titleLabel,
                 "subtitleLabel": subtitleLabel,
                 "dateLabel": dateLabel,
                 "featuredWorkImage": featuredWorkImage]
    let separatorLineConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[separatorView]|",
                                                                  options: [],
                                                                  metrics: metrics,
                                                                  views: views)
    let titleHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[titleLabel]|",
                                                                    options: [],
                                                                    metrics: metrics,
                                                                    views: views)
    let subtitleHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[subtitleLabel]|",
                                                                       options: [],
                                                                       metrics: metrics,
                                                                       views: views)
    let dateHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[dateLabel]|",
                                                                   options: [],
                                                                   metrics: metrics,
                                                                   views: views)
    let featuredWorkHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(sidePadding)-[featuredWorkImage]|",
                                                                           options: [],
                                                                           metrics: metrics,
                                                                           views: views)
    let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[separatorView(==separatorLineHeight)]-(verticalPadding)-[titleLabel(==titleLabelHeight)][subtitleLabel(==subtitleLabelHeight)][dateLabel(==subtitleLabelHeight)][featuredWorkImage]|",
                                                             options: [],
                                                             metrics: metrics,
                                                             views: views)
    
    self.addConstraints(separatorLineConstraints)
    self.addConstraints(titleHorizontalConstraints)
    self.addConstraints(subtitleHorizontalConstraints)
    self.addConstraints(dateHorizontalConstraints)
    self.addConstraints(featuredWorkHorizontalConstraints)
    self.addConstraints(verticalConstraints)
    super.updateConstraints()
  }
  
}
