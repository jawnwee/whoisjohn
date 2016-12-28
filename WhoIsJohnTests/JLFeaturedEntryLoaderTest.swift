//
//  JLFeaturedEntryLoaderTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLFeaturedEntryLoaderTest: XCTestCase {
  
  var loader: JLFeaturedEntryLoader!
  
  override func setUp() {
    super.setUp()
    loader = JLFeaturedEntryLoader()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testLoadLatest() {
    XCTAssertEqual(0, loader.featuredEntries.count)
    loader.loadLatest()
    XCTAssertTrue(loader.featuredEntries.count > 0)
  }
  
}
