//
//  JLResumeCategoryCollectionViewCellTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLResumeCategoryCollectionViewCellTest: XCTestCase {
  
  var categoryCollectionViewCell: JLResumeCategoryCollectionViewCell!
  
  override func setUp() {
    super.setUp()
    categoryCollectionViewCell = JLResumeCategoryCollectionViewCell()
  }
  
  override func tearDown() {
    categoryCollectionViewCell = nil
    super.tearDown()
  }
  
  func testInit() {
    XCTAssertFalse(categoryCollectionViewCell.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(categoryCollectionViewCell, categoryCollectionViewCell.categoryLabel.superview)
    XCTAssertEqual(categoryCollectionViewCell, categoryCollectionViewCell.separatorView.superview)
  }
  
  func testUpdateConstraints() {
    XCTAssertEqual(0, categoryCollectionViewCell.constraints.count)
    categoryCollectionViewCell.updateConstraints()
    XCTAssertEqual(8, categoryCollectionViewCell.constraints.count)
  }
  
}
