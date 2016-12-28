//
//  JLRootViewControllerTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
import IGListKit
@testable import WhoIsJohn

class JLRootViewControllerTest: XCTestCase {
  
  var rootVc: JLRootViewController!
  
  override func setUp() {
    super.setUp()
    rootVc = JLRootViewController()
  }
  
  override func tearDown() {
    rootVc = nil
    super.tearDown()
  }
  
  func testLoaders() {
    XCTAssertEqual(3, rootVc.loaders.count)
  }
  
  func testListAdapter_title() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    let sectionController = rootVc.listAdapter(adapter, sectionControllerFor: "John Lee")
    XCTAssertTrue(sectionController is JLResumeTitleSectionController)
  }
  
  func testListAdapter_featured() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    let sectionController = rootVc.listAdapter(adapter, sectionControllerFor: JLFeaturedEntryLoader())
    XCTAssertTrue(sectionController is JLFeaturedWorkCollectionSectionController)
  }
  
  func testListAdapter_resumeCategories() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    let sectionController = rootVc.listAdapter(adapter, sectionControllerFor: JLResumeCategoryLoader())
    XCTAssertTrue(sectionController is JLResumeCategoriesCollectionSectionController)
  }
  
  func testEmptyView() {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: nil,
                                workingRangeSize: 0)
    XCTAssertNil(rootVc.emptyView(for: adapter))
  }
  
}
