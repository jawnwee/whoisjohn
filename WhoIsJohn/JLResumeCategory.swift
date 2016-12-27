//
//  ResumeCategory.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

enum JLResumeCategoryType {
  case EducationSkills
  case WorkExperience
  case Projects
  case InterestsActivities
  case RelevantLinks
  case Unknown
}

class JLResumeCategory: NSObject {

  let title: String
  let resumeType: JLResumeCategoryType
  
  init(title: String) {
    self.title = title
    if title == "Education & Skills" {
      resumeType = .EducationSkills
    } else if title == "Work Experience" {
      resumeType = .WorkExperience
    } else if title == "Projects" {
      resumeType = .Projects
    } else if title == "Interests & Activities" {
      resumeType = .InterestsActivities
    } else if title == "Relevant Links" {
      resumeType = .RelevantLinks
    } else {
      resumeType = .Unknown
    }
  }
}
