//
//  JLFeaturedWorkCollectionSectionControllerTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
import IGListKit
@testable import WhoIsJohn

class JLFeaturedWorkCollectionSectionControllerTest: XCTestCase {
  
  var featuredCollectionSectionController: JLFeaturedWorkCollectionSectionController!
  
  override func setUp() {
    super.setUp()
    featuredCollectionSectionController = JLFeaturedWorkCollectionSectionController()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testObjects() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    XCTAssertNil(featuredCollectionSectionController.loader)
    featuredCollectionSectionController.didUpdate(to: JLFeaturedEntryLoader())
    XCTAssertNotNil(featuredCollectionSectionController.loader)
    XCTAssertNotNil(featuredCollectionSectionController.objects(for: adapter))
  }
  
  func testListAdapter() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    let sectionController = featuredCollectionSectionController.listAdapter(adapter, sectionControllerFor: "doesn't matter")
    XCTAssertTrue(sectionController is JLFeaturedWorkSectionController)
  }
  
  func testEmptyView() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    XCTAssertNil(featuredCollectionSectionController.emptyView(for: adapter))
  }
  
}
