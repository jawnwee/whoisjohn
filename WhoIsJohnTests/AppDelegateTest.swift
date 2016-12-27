//
//  AppDelegateTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class AppDelegateTest: XCTestCase {
  
  var appDelegate: AppDelegate!
    
  override func setUp() {
    super.setUp()
    appDelegate = AppDelegate()
  }
  
  override func tearDown() {
    appDelegate = nil
    super.tearDown()
  }
  
  func testApplicationDidFinishLaunching() {
    XCTAssertNil(appDelegate.window)
    let application: UIApplication = UIApplication.shared
    let result = appDelegate.application(application, didFinishLaunchingWithOptions: nil)
    XCTAssertTrue(result)
    XCTAssertNotNil(appDelegate.window)
  }
  
}
