//
//  FeaturedEntry.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLFeaturedEntry: NSObject {
  
  let date: String
  let title: String
  let subtitle: String
  let image: UIImage
  
  init(date: String, title: String, subtitle: String, image: UIImage) {
    self.date = date
    self.title = title
    self.subtitle = subtitle
    self.image = image
  }
}
