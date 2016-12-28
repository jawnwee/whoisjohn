//
//  ResumeCategoryLoader.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class JLResumeCategoryLoader: NSObject {

  var categories = [JLResumeCategory]()
  
  func loadLatest() {
    self.categories = [JLResumeCategory(title: "Education & Skills"),
                       JLResumeCategory(title: "Work Experience"),
                       JLResumeCategory(title: "Projects"),
                       JLResumeCategory(title: "Interests & Activities"),
                       JLResumeCategory(title: "Relevant Links")];
  }

}
