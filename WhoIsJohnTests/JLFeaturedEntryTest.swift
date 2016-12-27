//
//  JLFeaturedEntryTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLFeaturedEntryTest: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testInit() {
    let entry: JLFeaturedEntry = JLFeaturedEntry(date: "July 2016 - Present", title: "iOS Engineer", subtitle: "Wealthfront Inc.", image: #imageLiteral(resourceName: "Wealthfront"))
    XCTAssertEqual("July 2016 - Present", entry.date)
    XCTAssertEqual("iOS Engineer", entry.title)
    XCTAssertEqual("Wealthfront Inc.", entry.subtitle)
    XCTAssertEqual(#imageLiteral(resourceName: "Wealthfront"), entry.image)

  }
  
}
