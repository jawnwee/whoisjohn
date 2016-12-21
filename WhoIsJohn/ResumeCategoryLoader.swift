//
//  ResumeCategoryLoader.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class ResumeCategoryLoader: NSObject {

  var entries = [ResumeCategory]()
  
  func loadLatest() {
    self.entries = [ResumeCategory(title: "Education & Skills")];
  }

}
