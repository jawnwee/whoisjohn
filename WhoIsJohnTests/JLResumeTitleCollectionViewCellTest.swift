//
//  JLResumeTitleCollectionViewCellTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLResumeTitleCollectionViewCellTest: XCTestCase {
  
  var cell: JLResumeTitleCollectionViewCell!
  
  override func setUp() {
    super.setUp()
    cell = JLResumeTitleCollectionViewCell()
  }
  
  override func tearDown() {
    cell = nil
    super.tearDown()
  }
  
  func testInit() {
    XCTAssertFalse(cell.translatesAutoresizingMaskIntoConstraints)
    XCTAssertEqual(cell, cell.titleLabel.superview)
  }
  
  func testLayoutSubviews() {
    cell.title = "testTitle"
    cell.layoutSubviews()
    XCTAssertEqual(cell.title, cell.titleLabel.text)
  }
  
  func testConstraints() {
    XCTAssertEqual(0, cell.constraints.count)
    cell.updateConstraints()
    XCTAssertEqual(4, cell.constraints.count)
  }
  
}
