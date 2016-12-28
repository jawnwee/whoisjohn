//
//  JLFeaturedWorkCollectionViewCellTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLFeaturedWorkCollectionViewCellTest: XCTestCase {
  
  var  featuredWorkCollectionViewCell: JLFeaturedWorkCollectionViewCell!
  
  override func setUp() {
    super.setUp()
    featuredWorkCollectionViewCell = JLFeaturedWorkCollectionViewCell()
  }
  
  override func tearDown() {
    featuredWorkCollectionViewCell = nil
    super.tearDown()
  }
  
  func testInit() {
    XCTAssertFalse(featuredWorkCollectionViewCell.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(featuredWorkCollectionViewCell.contentView, featuredWorkCollectionViewCell.separatorView.superview)
    XCTAssertEqual(featuredWorkCollectionViewCell.contentView, featuredWorkCollectionViewCell.titleLabel.superview)
    XCTAssertEqual(featuredWorkCollectionViewCell.contentView, featuredWorkCollectionViewCell.subtitleLabel.superview)
    XCTAssertEqual(featuredWorkCollectionViewCell.contentView, featuredWorkCollectionViewCell.dateLabel.superview)
    XCTAssertEqual(featuredWorkCollectionViewCell.contentView, featuredWorkCollectionViewCell.featuredWorkImage.superview)
  }
  
  func testUpdateConstraints() {
    XCTAssertEqual(0, featuredWorkCollectionViewCell.constraints.count)
    featuredWorkCollectionViewCell.updateConstraints()
    XCTAssertEqual(20, featuredWorkCollectionViewCell.constraints.count)
  }
  
}
