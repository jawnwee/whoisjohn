//
//  FeaturedEntryLoader.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class FeaturedEntryLoader: NSObject {
  
  var entries = [FeaturedEntry]()

  func loadLatest() {
    self.entries = [FeaturedEntry(date: "July 2016", title: "Wealthfront Inc.", subtitle: "Wealthfront iOS", image: UIImage())];
  }

}
