//
//  JLResumeCategoryTest.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/27/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import XCTest
@testable import WhoIsJohn

class JLResumeCategoryTest: XCTestCase {
  
  override func setUp() {
    super.setUp()

  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testResumeType() {
    var resumeCategory: JLResumeCategory = JLResumeCategory(title: "Education & Skills")
    XCTAssertEqual(JLResumeCategoryType.EducationSkills, resumeCategory.resumeType)
    resumeCategory = JLResumeCategory(title: "Work Experience")
    XCTAssertEqual(JLResumeCategoryType.WorkExperience, resumeCategory.resumeType)
    resumeCategory = JLResumeCategory(title: "Projects")
    XCTAssertEqual(JLResumeCategoryType.Projects, resumeCategory.resumeType)
    resumeCategory = JLResumeCategory(title: "Interests & Activities")
    XCTAssertEqual(JLResumeCategoryType.InterestsActivities, resumeCategory.resumeType)
    resumeCategory = JLResumeCategory(title: "Relevant Links")
    XCTAssertEqual(JLResumeCategoryType.RelevantLinks, resumeCategory.resumeType)
    resumeCategory = JLResumeCategory(title: "unknown")
    XCTAssertEqual(JLResumeCategoryType.Unknown, resumeCategory.resumeType)
  }
  
}
