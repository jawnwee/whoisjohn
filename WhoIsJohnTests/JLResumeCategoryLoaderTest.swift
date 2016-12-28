//
//  JLResumeCategoryLoaderTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLResumeCategoryLoaderTest: XCTestCase {
  
  var loader: JLResumeCategoryLoader!
  
  override func setUp() {
    super.setUp()
    loader = JLResumeCategoryLoader()
  }
  
  override func tearDown() {
    loader = nil
    super.tearDown()
  }
  
  func testLoadLatest() {
    XCTAssertEqual(0, loader.categories.count)
    loader.loadLatest()
    XCTAssertTrue(loader.categories.count > 0)
  }
  
}
