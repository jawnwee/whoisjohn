//
//  JLResumeCategoriesCollectionSectionControllerTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
import IGListKit
@testable import WhoIsJohn

class JLResumeCategoriesCollectionSectionControllerTest: XCTestCase {
  
  var categoriesCollectionSectionController: JLResumeCategoriesCollectionSectionController!
  
  override func setUp() {
    super.setUp()
    categoriesCollectionSectionController = JLResumeCategoriesCollectionSectionController()
  }
  
  override func tearDown() {
    categoriesCollectionSectionController = nil
    super.tearDown()
  }
  
  func testObjects() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    XCTAssertNil(categoriesCollectionSectionController.loader)
    categoriesCollectionSectionController.didUpdate(to: JLFeaturedEntryLoader())
    XCTAssertNotNil(categoriesCollectionSectionController.loader)
    XCTAssertNotNil(categoriesCollectionSectionController.objects(for: adapter))
  }
  
  func testListAdapter() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    let sectionController = categoriesCollectionSectionController.listAdapter(adapter, sectionControllerFor: "doesn't matter")
    XCTAssertTrue(sectionController is JLFeaturedWorkSectionController)
  }
  
  func testEmptyView() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    XCTAssertNil(categoriesCollectionSectionController.emptyView(for: adapter))
  }
  
}
