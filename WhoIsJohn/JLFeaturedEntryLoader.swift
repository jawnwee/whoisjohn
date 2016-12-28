//
//  JLFeaturedEntryLoader.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class JLFeaturedEntryLoader: NSObject {
  
  var featuredEntries = [JLFeaturedEntry]()

  func loadLatest() {
    self.featuredEntries = [JLFeaturedEntry(date: "July 2016 - Present", title: "iOS Engineer", subtitle: "Wealthfront Inc.", image: #imageLiteral(resourceName: "Wealthfront")),
                            JLFeaturedEntry(date: "July 2016", title: "Wealthfront Inc.", subtitle: "Wealthfront iOS", image: #imageLiteral(resourceName: "Wealthfront"))];
  }

}
