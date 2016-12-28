//
//  JLResumeCategoriesEmbeddedCollectionViewCellTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLResumeCategoriesEmbeddedCollectionViewCellTest: XCTestCase {
  
  var embeddedCollectionViewCell: JLResumeCategoriesEmbeddedCollectionViewCell!
  
  override func setUp() {
    super.setUp()
    embeddedCollectionViewCell = JLResumeCategoriesEmbeddedCollectionViewCell()
  }
  
  override func tearDown() {
    embeddedCollectionViewCell = nil
    super.tearDown()
  }
  
  func testInit() {
    XCTAssertFalse(embeddedCollectionViewCell.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(embeddedCollectionViewCell.contentView, embeddedCollectionViewCell.collectionView.superview)
  }
  
  func testUpdateConstraints() {
    XCTAssertEqual(0, embeddedCollectionViewCell.constraints.count)
    embeddedCollectionViewCell.updateConstraints()
    XCTAssertEqual(4, embeddedCollectionViewCell.constraints.count)
  }
  
}
